package com.example.holidays

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle

class MainActivity : AppCompatActivity() {
    private TextView selectGift;
    private ToggleButton toggle;
    private Spinner giftCat;
    private RadioGroup person;
    private CheckBox funnyCheckBox;
    private CheckBox caringCheckBox;
    private CheckBox smallCheckBox;
    private CheckBox bigCheckBox;

    @Override
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        //Views
        selectGift = findViewById(R.id.sportTextView);
        toggle = findViewById(R.id.toggleButton);
        giftCat = findViewById(R.id.spinner);
        person = findViewById(R.id.radioGroup);
        funnyCheckBox = findViewById(R.id.checkBox1);
        caringCheckBox = findViewById(R.id.checkBox2);
        smallCheckBox = findViewById(R.id.checkBox3);
        bigCheckBox = findViewById(R.id.checkBox4);
    }

    
}
