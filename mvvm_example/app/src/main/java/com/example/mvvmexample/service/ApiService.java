package com.example.mvvmexample.service;

import com.example.mvvmexample.model.Post;
import com.google.gson.JsonObject;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;

public interface ApiService {


        public static String Error = "Something Went Wrong";
        public static String BASE_URL = "https://jsonplaceholder.typicode.com/";




    @GET("posts")
    Call<List<Post>> getPosts();









    }
