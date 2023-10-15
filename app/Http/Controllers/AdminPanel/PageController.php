<?php

namespace App\Http\Controllers\AdminPanel;

use App\Http\Requests\AdminPanel\CreatePageRequest;
use App\Http\Requests\AdminPanel\UpdatePageRequest;
use App\Http\Controllers\AppBaseController;
use App\Models\Page;
use App\Repositories\PageRepository;
use Illuminate\Http\Request;
use Flash;

class PageController extends AppBaseController
{
    /** @var PageRepository $pageRepository*/
    private $pageRepository;

    public function __construct(PageRepository $pageRepo)
    {
        $this->pageRepository = $pageRepo;
        $this->middleware('permission:View Page|Add Page|Edit Page|Delete Page', ['only' => ['index', 'store']]);
        $this->middleware('permission:Add Page', ['only' => ['create', 'store']]);
        $this->middleware('permission:Edit Page', ['only' => ['edit', 'update']]);
        $this->middleware('permission:Delete Page', ['only' => ['destroy']]);
    }

    /**
     * Display a listing of the Page.
     */
    public function index(Request $request)
    {
        $pages = $this->pageRepository->all();

        return view('AdminPanel.pages.index',get_defined_vars());
    }

    /**
     * Show the form for creating a new Page.
     */
    public function create()
    {
        return view('AdminPanel.pages.create');
    }

    /**
     * Store a newly created Page in storage.
     */
    public function store(CreatePageRequest $request)
    {
        $input = $request->all();

        $page = $this->pageRepository->create($input);


        return redirect(route('pages.index'))->with('success',__('lang.created'));
    }

    /**
     * Display the specified Page.
     */
    // public function show($id)
    // {
    //     $page = $this->pageRepository->find($id);

    //     if (empty($page)) {
    //         Flash::error('Page not found');

    //         return redirect(route('pages.index'));
    //     }

    //     return view('pages.show')->with('page', $page);
    // }

    /**
     * Show the form for editing the specified Page.
     */
    public function edit($id)
    {
        $page = Page::findOrFail($id);


        return view('AdminPanel.pages.edit',get_defined_vars());
    }

    /**
     * Update the specified Page in storage.
     */
    public function update($id, UpdatePageRequest $request)
    {
        $page = Page::findOrFail($id);

        $page = $this->pageRepository->update($request->all(), $id);

        return redirect(route('pages.index'))->with('success',__('lang.updated'));
    }

    /**
     * Remove the specified Page from storage.
     *
     * @throws \Exception
     */
    public function destroy($id)
    {
        $page = Page::findOrFail($id);
        $this->pageRepository->delete($id);

        return redirect(route('pages.index'))->with('warning',__('lang.deleted'));
    }
}
