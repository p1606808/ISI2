<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UserSeeder::class);
        //factory(App\modele\Categorie::class, 10)->create();
        factory(App\modele\Film::class, 10)->create();
    }
}
