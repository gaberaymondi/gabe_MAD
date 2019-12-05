package com.example.lab8;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

public class ShoeActivity extends AppCompatActivity {
    private String shoePalace;
    private String shoePalaceURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_shoe);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
            }
        });

        Intent intent = getIntent();
        shoePalace = intent.getStringExtra("shoePalaceName");
        shoePalaceURL = intent.getStringExtra("shoePalaceURL");
        Log.i("shop received", shoePalace);
        Log.i("url received", shoePalaceURL);

        //update text view
        TextView messageView = findViewById(R.id.coffeeShopTextView);
        String message = getString(R.string.message);
        messageView.setText(message + " "  + shoePalace);
    }

}
