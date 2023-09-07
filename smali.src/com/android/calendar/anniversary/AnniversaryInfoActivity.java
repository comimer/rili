package com.android.calendar.anniversary;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.android.calendar.event.EventInfoActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/anniversary/AnniversaryInfoActivity;", "Lcom/android/calendar/event/EventInfoActivity;", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/u;", "h1", "<init>", "()V", "T", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class AnniversaryInfoActivity
  extends EventInfoActivity
{
  public static final a T = new a(null);
  public Map<Integer, View> S;
  
  protected void h1(Bundle paramBundle)
  {
    l1(getIntent().getLongExtra("event_id", -1L));
    paramBundle = getIntent().getSerializableExtra("desired_day");
    if (paramBundle != null) {
      paramBundle = (Calendar)paramBundle;
    } else {
      paramBundle = null;
    }
    T0().add(new EventInfoActivity.EventInfo(O0(), 8, 0L, 0L, 0, paramBundle, 28, null));
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/anniversary/AnniversaryInfoActivity$a;", "", "", "EXTRA_KEY_DESIRED_DAY", "Ljava/lang/String;", "EXTRA_KEY_EVENT_ID", "EXTRA_KEY_INFO", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.anniversary.AnniversaryInfoActivity
 * JD-Core Version:    0.7.0.1
 */