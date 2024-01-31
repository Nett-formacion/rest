<?php

namespace Tests\Feature\Auth;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class AccessTokenTest extends TestCase
{
    /**
     @test
     */
    public function can_issue_access_token(): void
    {
        $user =User::factory()->create();




    }
}
