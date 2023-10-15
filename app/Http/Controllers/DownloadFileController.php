<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DownloadFileController extends Controller
{
  public function downloadPdf(Request $user)
{
    // Determine the user's PDF file based on user information.
    $pdfFilePath = 'uploads/' . $user->company_paper_attachment; // Adjust the path as needed

    $file = public_path($pdfFilePath);
    return response()->download($file, 'desired-filename.pdf');
}

}
