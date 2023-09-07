package com.miui.calendar.event.loan;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.android.calendar.event.EventInfoActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import java.util.List;

public class LoanDetailActivity
  extends EventInfoActivity
{
  protected void h1(Bundle paramBundle)
  {
    long l = getIntent().getLongExtra("_id", 0L);
    T0().add(new EventInfoActivity.EventInfo(l, 16, -1L, -1L, 0, null));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.event.loan.LoanDetailActivity
 * JD-Core Version:    0.7.0.1
 */