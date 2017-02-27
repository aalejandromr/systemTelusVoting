<?php

use Illuminate\Database\Seeder;

class add_country_el_salvador_guatemala extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('countries')->insert([
            'name' => 'str_random(10)'
        ]);
    }
}
