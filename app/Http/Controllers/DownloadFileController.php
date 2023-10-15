<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class DownloadFileController extends Controller
{
  public function downloadPdf($id)
{
    $user = User::find($id);
    // Determine the user's PDF file based on user information.
    $pdfFilePath = $user->company_paper_attachment; // Adjust the path as needed


    $file = public_path($pdfFilePath);
    return response()->download($file, 'Company-paper.pdf');
}

}
