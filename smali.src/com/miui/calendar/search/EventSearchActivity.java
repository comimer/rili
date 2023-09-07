package com.miui.calendar.search;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import com.android.calendar.common.b;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/search/EventSearchActivity;", "Lcom/android/calendar/common/b;", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/u;", "onCreate", "onPause", "Landroid/view/inputmethod/InputMethodManager;", "b", "Landroid/view/inputmethod/InputMethodManager;", "mIMM", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class EventSearchActivity
  extends b
{
  private InputMethodManager b;
  public Map<Integer, View> c;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null) {
      getSupportFragmentManager().m().b(16908290, new c()).h();
    }
    paramBundle = getSystemService("input_method");
    r.d(paramBundle, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
    this.b = ((InputMethodManager)paramBundle);
    getWindow().getDecorView().setBackgroundColor(getColor(2131100699));
  }
  
  protected void onPause()
  {
    super.onPause();
    View localView = getCurrentFocus();
    if (localView != null)
    {
      InputMethodManager localInputMethodManager1 = this.b;
      InputMethodManager localInputMethodManager2 = localInputMethodManager1;
      if (localInputMethodManager1 == null)
      {
        r.x("mIMM");
        localInputMethodManager2 = null;
      }
      localInputMethodManager2.hideSoftInputFromWindow(localView.getWindowToken(), 0);
      localView.clearFocus();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.search.EventSearchActivity
 * JD-Core Version:    0.7.0.1
 */