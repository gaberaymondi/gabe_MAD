package com.example.customlistview;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;

public class MyCustomList extends AppCompatActivity {
    ListView listView;
    ArrayList<Cars> carsArray;
    MyAdapter myAdapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_my_custom_list);

        listView = findViewById(R.id.my_list_view);

        carsArray = new ArrayList<>();
        carsArray.add(new Cars("rolls_royce",R.drawable.rolls_royce));
        carsArray.add(new Cars("baleno",R.drawable.baleno));
        carsArray.add(new Cars("ferrar",R.drawable.ferrari));
        carsArray.add(new Cars("koeniggsegg",R.drawable.koeniggsegg));
        carsArray.add(new Cars("lambo",R.drawable.lambo));

        myAdapter = new MyAdapter(carsArray, getApplicationContext());

        listView.setAdapter(myAdapter);
    }
}
