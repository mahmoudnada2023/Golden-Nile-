<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;

class BlogController extends Controller
{
    public function index()
    {
        // try {
        //     $client = new \GuzzleHttp\Client();
        //     $URI = 'http://10.0.0.11:8080/ords/fircde/posty/post_line?VUW_CLIENT_NO=123456777&VUW_CUST_NO=12345677887&VUW_CUST_NAME=hanafy12&gender=1&typee=1';
        //     $params['headers'] = ['Content-Type' => 'application/json'];
        //     $body = [
        //         'authCaptureModePayment' => false,
        //     ];
        //     $params['body'] = json_encode($body);
        //     $response = $client->post($URI, $params);
        // } catch (ClientException $e) {
        //     $response = $e->getResponse();
        //     return ($e->getMessage());
        // }
        'https://api.themoviedb.org/3/movie/12?api_key=a64230b678559602ccfb57ff4dd891dc';
        $client = new \GuzzleHttp\Client();
        $request = $client->get('https://api.themoviedb.org/3/discover/movie?api_key=a64230b678559602ccfb57ff4dd891dc'); // Url of your choosing
        $response = $request->getBody();

        $data = json_decode($response);
        foreach ($data->results as $item) {
            $blog = Blog::where('movie_id', $item->id)->first();
            if (!$blog) {

                Blog::create(['title' => $item->original_title, 'content' => $item->overview, 'sub_header' => $item->title, 'movie_id' => $item->id]);
                Redis::del('blog1');
            }
        }
        $cachedBlog = Redis::get('blog1');
        // Redis::del('blog1');

        if (isset($cachedBlog)) {
            $blog = json_decode($cachedBlog, FALSE);

            return response()->json([
                'status_code' => 201,
                'message' => 'Fetched from redis',
                'data' => $blog,
            ]);
        } else {
            $blog = Blog::get();
            Redis::set('blog1', $blog);

            return response()->json([
                'status_code' => 201,
                'message' => 'Fetched from database',
                'data' => $blog,
            ]);
        }
    }
}
