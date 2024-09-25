package com.example.mvvmexample.viewmodel;

import android.app.Application;

import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;

import com.example.mvvmexample.model.Post;
import com.example.mvvmexample.repository.SampleRepository;

import java.util.List;

public class PostViewModel extends AndroidViewModel {


    private SampleRepository repository;

    public PostViewModel(@NonNull Application application) {
        super(application);

        repository=new SampleRepository(application.getApplicationContext());

    }




    public LiveData<List<Post>> getPosts()
    {
        return  repository.getPost();

    }
}
