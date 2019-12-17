package com.example.burrito;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {
    EditText name;
    private ToggleButton toggleButton;
    private RadioGroup foodType;
    private CheckBox salsaCB;
    private CheckBox cheeseCB;
    private CheckBox sourcreamCB;
    private CheckBox guacCB;
    private Spinner street;
    private Button button;

    String meal;
    String features;
    String dairy;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //get views
        name = findViewById(R.id.editText);
        toggleButton = findViewById(R.id.toggleButton);
        foodType = findViewById(R.id.radioGroup);
        sourcreamCB = findViewById(R.id.sourcreamBox);
        guacCB = findViewById(R.id.guacamoleBox);
        salsaCB = findViewById(R.id.salsaBox);
        cheeseCB = findViewById(R.id.cheeseBox);
        street = findViewById(R.id.spinner);

        button = findViewById(R.id.button2);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openBurrito(v);
            }
        });


    }
    public void openBurrito(View v){
        Intent intent = new Intent(this,BurritoActivity.class);
        startActivity(intent);
    }

    public void buildBurrito(View view) {
        //edit text
        String nameValue = name.getText().toString();

        //toggle button
        boolean gluten = toggleButton.isChecked();

        //radio buttons
        int tacovsburrito = foodType.getCheckedRadioButtonId();

        //check boxes
        Boolean salsa = salsaCB.isChecked();
        Boolean cheese = cheeseCB.isChecked();
        Boolean sc = sourcreamCB.isChecked();
        Boolean guaca = guacCB.isChecked();

        //spinner
        String eatLocation = street.getSelectedItem().toString();

        //image
        ImageView food = findViewById(R.id.imageView);

        //String meal = "";
        //check radio buttons
        if (tacovsburrito == -1) {
            //toast
            Context context = getApplicationContext();
            CharSequence text = "Please select either a taco or a burrito";
            int duration = Toast.LENGTH_SHORT;

            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        } else {
            if (tacovsburrito == R.id.radioButton2) {
                meal = "burrito";
                food.setImageResource(R.drawable.burrito);

            } else if (tacovsburrito == R.id.radioButton) {
                meal = "taco";
                food.setImageResource(R.drawable.taco);
            }
        }
        if (salsa) {
            features = "salsa";
        } else if (cheese) {
            features = "cheese";
        } else if (sc) {
            features = "sour cream";
        } else if (guaca) {
            features = "guacamole";
        }
        if (gluten) {
            dairy = "meat";
        } else {
            dairy = "veggies";
        }
        TextView sentence = findViewById(R.id.displayText);
        sentence.setText(nameValue + " wants a " + meal + " with " + dairy + " and " + features + ". You should eat on " + eatLocation + ".");

    }
}

