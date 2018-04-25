<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:background="@color/colorBack">

    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Оцените наше приложение"
        android:layout_marginTop="16dp"
        android:layout_gravity="center_horizontal"
        android:textColor="@color/colorBlack"/>

    <com.willy.ratingbar.ScaleRatingBar
        android:id="@+id/ratingBar"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="30dp"
        android:layout_gravity="center_horizontal"/>

    <TextView
        android:id="@+id/tvRate"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center_horizontal"
        android:textColor="@color/colorBlack"
        android:text="Ждемс.." />

</LinearLayout>