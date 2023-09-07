package com.miui.calendar.search;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import com.miui.calendar.util.g.u;
import com.miui.calendar.util.g.w;
import miuix.androidbasewidget.widget.ClearableEditText;
import miuix.appcompat.app.m;
import org.greenrobot.eventbus.ThreadMode;
import pc.c;
import pc.l;

public class SearchDetailsActivity
  extends com.android.calendar.common.b
{
  private b b;
  private ClearableEditText c;
  private InputMethodManager d;
  private int e = 0;
  
  private void Z()
  {
    if (this.b == null) {
      this.b = new b();
    }
  }
  
  private void a0()
  {
    Object localObject = (ClearableEditText)findViewById(2131361947);
    this.c = ((ClearableEditText)localObject);
    if (localObject == null) {
      return;
    }
    localObject = (b)getSupportFragmentManager().i0("calendar:AllEventsFragment");
    this.b = ((b)localObject);
    if (localObject == null)
    {
      Z();
      getSupportFragmentManager().m().r(2131361948, this.b, "calendar:AllEventsFragment").h();
    }
    findViewById(2131363525).setOnClickListener(new i(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558919);
    c.c().o(this);
    findViewById(2131363524).setVisibility(8);
    a0();
    paramBundle = new ColorDrawable();
    paramBundle.setColor(getApplicationContext().getResources().getColor(2131100699, null));
    miuix.appcompat.app.a locala = J();
    if (locala != null) {
      locala.u(paramBundle);
    }
    this.d = ((InputMethodManager)getSystemService("input_method"));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131623939, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    c.c().q(this);
  }
  
  @l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.u paramu)
  {
    this.b.l(paramu);
  }
  
  @l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.w paramw)
  {
    this.e = paramw.a;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131361898)
    {
      b localb = this.b;
      if ((localb != null) && (this.e > 0)) {
        localb.n();
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    this.d.hideSoftInputFromWindow(this.c.getWindowToken(), 0);
    this.c.clearFocus();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.search.SearchDetailsActivity
 * JD-Core Version:    0.7.0.1
 */