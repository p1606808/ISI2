<?php

namespace App\Http\Controllers;

use App\modele\Film;
use App\modele\Categorie;
use Illuminate\Http\Request;

class FilmController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($laCategorie = null)
    {
        $query = $laCategorie ? Categorie::where('libelle',"$laCategorie")->firstOrFail()->films() : Film::query();
        $lesFilms = $query->get();
        $categories = Categorie::all();
        return view('listeFilms', compact('lesFilms', 'categories', 'laCategorie'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Categorie::all();
        return view('ajoutFilm', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Film::create($request->all());
        return redirect()->route('films.index')->with('info', 'Le film a été créé dans la base de données.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Film $film)
    {
        $libelle = $film->categorie->libelle;
        return view('afficherFilm', compact('film', 'libelle'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Film $film)
    {
        $film->delete();
        return back()->with('info','Le film a bien été supprimé dans la base de données');
    }
}
