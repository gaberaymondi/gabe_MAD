package com.example.lab8;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

public class MainActivity extends AppCompatActivity {
    private Button button;
    private Spinner crowdSpinner;
    private ShoePalace myShoePalace = new ShoePalace();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        crowdSpinner=findViewById(R.id.spinner);
        button = findViewById(R.id.button);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                findShoe(v);
            }
        };
        //add listener to button
        button.setOnClickListener(onclick);

        //get toolbar and set it as the app bar
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
    }

    private void findShoe(View view){
        Integer crowd = crowdSpinner.getSelectedItemPosition();
        myShoePalace.setshoePalaceName(crowd);
        String suggestedShoePalace = myShoePalace.getshoePalaceName();
        String suggestedShoePalaceURL = myShoePalace.getshoePalaceURL();
        Log.i("shop suggested", suggestedShoePalace);
        Log.i("url suggested", suggestedShoePalaceURL);

        Intent intent = new Intent(this,ShoeActivity.class);
        intent.putExtra("shoePalaceName", suggestedShoePalace);
        intent.putExtra("shoePalaceURL", suggestedShoePalaceURL);
        startActivity(intent);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        //inflate menu to add items to the action bar
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        //get the ID of the item on the action bar that was clicked
        switch (item.getItemId()){
            case R.id.create_order:
                Intent intent = new Intent(this, OrderActivity.class);
                startActivity(intent);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
