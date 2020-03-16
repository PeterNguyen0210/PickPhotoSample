package com.werb.pickphotoview.extensions

import android.content.Context
import android.graphics.Color
import android.graphics.drawable.Drawable
import androidx.core.content.ContextCompat

/** Created by wanbo <werbhelius@gmail.com> on 2017/10/15. */

fun Context.drawable(resId: Int) : Drawable? = ContextCompat.getDrawable(this, resId);

fun Context.color(resId: Int) : Int = ContextCompat.getColor(this , resId)

fun Context.string(resId: Int) : String = getString(resId)

fun alphaColor(resId: Int) : Int  = Color.argb(77, Color.red(resId), Color.green(resId), Color.blue(resId))