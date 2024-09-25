package com.example.mvvmexample;

import android.os.Bundle;
import android.util.Log;

import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;

import com.example.mvvmexample.databinding.ActivityMainBinding;
import com.example.mvvmexample.model.Post;
import com.example.mvvmexample.viewmodel.PostViewModel;

import java.util.List;

public class MainActivity extends AppCompatActivity {

    private PostViewModel viewModel;

    private ActivityMainBinding binding;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());



        viewModel = new ViewModelProvider(this).get(PostViewModel.class);
        binding.click.setOnClickListener(v -> {
            viewModel.getPosts().observe(MainActivity.this, new Observer<List<Post>>() {
                @Override
                public void onChanged(List<Post> posts) {

                    if (posts != null) {

                        for (int i = 0; i < posts.size(); i++) {
                            Log.d("log1111", posts.get(i).getTitle());


                        }
                    }

                }
            });
        });


    }
}