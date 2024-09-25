package com.example.mvvmexample.repository;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.util.Log;
import android.widget.Toast;

import androidx.appcompat.app.AlertDialog;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;

import com.example.mvvmexample.model.Post;
import com.example.mvvmexample.service.ApiClient;
import com.example.mvvmexample.service.ApiService;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class SampleRepository {

    private Context context;


    public SampleRepository(Context context) {
        this.context = context;
    }


    public LiveData<List<Post>> getPost() {
        MutableLiveData<List<Post>> liveData = new MutableLiveData<>();


        ApiClient.getClient().create(ApiService.class).getPosts().enqueue(new Callback<List<Post>>() {
            @Override
            public void onResponse(Call<List<Post>> call, Response<List<Post>> response) {

                List<Post> post = response.body();
                if (post != null)
                {

                    Log.d("log1111", post.get(0).getTitle());

                    liveData.setValue(post);
                }

            }

            @Override
            public void onFailure(Call<List<Post>> call, Throwable t) {
                Log.d("log1111",t.getLocalizedMessage());
            }
        });


        return liveData;
    }
}


