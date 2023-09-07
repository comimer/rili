package com.android.calendar.event;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.AsyncQueryHandler;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.os.Bundle;
import android.provider.CalendarContract.Attendees;
import android.provider.CalendarContract.Calendars;
import android.provider.CalendarContract.Events;
import android.provider.CalendarContract.Reminders;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.Attendee;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.event.schema.TrainEvent;
import com.miui.calendar.sync.NewEventImportActivity;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.v;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.d0;
import com.miui.calendar.view.h;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Objects;
import java.util.TimeZone;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import miuix.appcompat.app.m;
import o1.i.d;
import s1.c;
import s1.e;

public abstract class NewBaseEditFragment
  extends Fragment
  implements View.OnClickListener, DialogInterface.OnCancelListener, DialogInterface.OnClickListener
{
  protected Cursor D;
  protected int E = -1;
  private boolean F = false;
  protected int G = 2131887405;
  protected int H = 2131886393;
  protected boolean I = false;
  private int a = -2147483648;
  private j b;
  protected Event c;
  protected Event d;
  private Event e;
  protected miuix.appcompat.app.a f;
  private i g;
  private l h;
  int i = 0;
  protected com.android.calendar.common.j j;
  private EventBundle k;
  private Uri l;
  protected long m;
  protected long n;
  protected String o;
  protected Context p;
  protected final h q = new h();
  private l r;
  private l v;
  protected boolean w = true;
  private boolean x = true;
  private InputMethodManager y;
  protected Intent z;
  
  public NewBaseEditFragment(Intent paramIntent)
  {
    this.z = paramIntent;
    this.j = z(paramIntent);
    setHasOptionsMenu(true);
  }
  
  private void A()
  {
    this.l = null;
    this.m = -1L;
    this.n = -1L;
    com.android.calendar.common.j localj = this.j;
    long l1;
    Object localObject;
    if (localj != null)
    {
      l1 = localj.a;
      if (l1 != -1L)
      {
        this.c.setId(l1);
        this.l = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, this.j.a);
      }
      else
      {
        localObject = this.c;
        boolean bool;
        if (localj.f == 16L) {
          bool = true;
        } else {
          bool = false;
        }
        ((Event)localObject).setAllDay(bool);
      }
      localObject = this.j.b;
      if (localObject != null) {
        this.m = ((Calendar)localObject).getTimeInMillis();
      }
      localObject = this.j.c;
      if (localObject != null) {
        this.n = ((Calendar)localObject).getTimeInMillis();
      }
    }
    else
    {
      localObject = this.k;
      if (localObject != null)
      {
        l1 = ((EventBundle)localObject).id;
        if (l1 != -1L)
        {
          this.c.setId(l1);
          this.l = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, this.k.id);
        }
        localObject = this.k;
        this.m = ((EventBundle)localObject).start;
        this.n = ((EventBundle)localObject).end;
      }
    }
  }
  
  private void C()
  {
    this.c.getEx().setTimezone(Utils.U(this.p));
    Object localObject1 = this.p;
    Object localObject2 = this.c;
    int i1 = 0;
    j.m((Context)localObject1, (Event)localObject2, false);
    localObject1 = this.z;
    if (localObject1 == null) {
      return;
    }
    localObject1 = ((Intent)localObject1).getStringExtra("title");
    if (localObject1 != null) {
      this.c.setTitle((String)localObject1);
    }
    localObject1 = this.z.getStringExtra("eventLocation");
    if (localObject1 != null) {
      this.c.setLocation((String)localObject1);
    }
    localObject1 = this.z.getStringExtra("description");
    if (localObject1 != null) {
      this.c.setDescription((String)localObject1);
    }
    localObject1 = this.z.getStringExtra("rrule");
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      this.c.getEx().setRrule((String)localObject1);
    }
    localObject1 = this.z.getStringExtra("rdate");
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      this.c.getEx().setRdate((String)localObject1);
    }
    localObject1 = this.z.getStringExtra("android.intent.extra.EMAIL");
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      localObject1 = ((String)localObject1).split("[ ,;]");
      int i2 = localObject1.length;
      while (i1 < i2)
      {
        localObject2 = localObject1[i1];
        if ((!TextUtils.isEmpty((CharSequence)localObject2)) && (((String)localObject2).contains("@")))
        {
          localObject2 = ((String)localObject2).trim();
          if (!this.c.getEx().getAttendeeList().containsKey(localObject2)) {
            this.c.getEx().getAttendeeList().put(localObject2, new Attendee("", (String)localObject2));
          }
        }
        i1++;
      }
    }
    long l1 = this.z.getLongExtra("emailMessageId", -1L);
    if (l1 != -1L)
    {
      this.c.getEx().setEmailMessageId(l1);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("from intent emailMessageId=");
      ((StringBuilder)localObject1).append(l1);
      z.a("Cal:D:BaseEditFragment", ((StringBuilder)localObject1).toString());
    }
    l1 = this.z.getLongExtra("emailMessageTimeStamp", -1L);
    if (l1 != -1L)
    {
      this.c.getEx().setEmailMessageTimeStamp(l1);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("from intent emailMessageTimeStamp=");
      ((StringBuilder)localObject1).append(l1);
      z.a("Cal:D:BaseEditFragment", ((StringBuilder)localObject1).toString());
    }
  }
  
  private void I()
  {
    if ((!this.c.getEx().canModifyEvent()) && (!this.c.getEx().canRespond()))
    {
      if ((this.c.getEx().canAddReminders()) && (this.c.getId() != -1L) && (this.d != null) && (R()))
      {
        S();
        this.q.a(1);
        this.q.run();
      }
      else
      {
        this.q.a(1);
        this.q.run();
      }
    }
    else if (R())
    {
      if (this.i == 0) {
        this.i = 3;
      }
      if (D())
      {
        boolean bool = this instanceof o1;
        String str = "NewEditEventFragment";
        if (!bool) {
          if ((this instanceof z0)) {
            str = "NewEditBirthdayFragment";
          } else if ((this instanceof q0)) {
            str = "NewEditAnniversaryFragment";
          } else if ((this instanceof m1)) {
            str = "NewEditCountdownFragment";
          } else if ((this instanceof s1)) {
            str = "NewEditTrainArriveStationFragment";
          }
        }
        int i1;
        if (this.c.getId() == -1L) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        if (i1 != 0) {
          com.miui.calendar.util.g0.f("create_new_event_done", new String[] { "type", str });
        }
        this.q.a(3);
        this.q.run();
      }
    }
    else
    {
      this.q.a(1);
      this.q.run();
    }
  }
  
  private void S()
  {
    Object localObject = new ArrayList(3);
    if (!j.q((ArrayList)localObject, this.c.getId(), this.c.getEx().getReminders(), this.d.getEx().getReminders(), false)) {
      return;
    }
    com.android.calendar.common.a locala = new com.android.calendar.common.a(getActivity(), this);
    locala.m(0, null, CalendarContract.Calendars.CONTENT_URI.getAuthority(), (ArrayList)localObject, 0L);
    localObject = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, this.c.getId());
    int i1;
    if (this.c.getEx().getReminders().size() > 0) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != this.d.getEx().hasAlarm())
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("hasAlarm", Integer.valueOf(i1));
      locala.q(0, null, (Uri)localObject, localContentValues, null, null, 0L);
    }
    t0.f(this.p.getApplicationContext(), 2131887405);
  }
  
  private void U(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("setModelIfDone(): queryType:");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:BaseEditFragment", localStringBuilder.toString());
    try
    {
      paramInt &= this.a;
      this.a = paramInt;
      if (paramInt == 0)
      {
        if (this.e != null)
        {
          localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("setModelIfDone(): mRestoreModel:");
          localStringBuilder.append(this.e);
          z.a("Cal:D:BaseEditFragment", localStringBuilder.toString());
          this.c = this.e;
          O(true);
        }
        localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append("setModelIfDone(): model:");
        localStringBuilder.append(this.c);
        z.a("Cal:D:BaseEditFragment", localStringBuilder.toString());
        O(false);
      }
      return;
    }
    finally {}
  }
  
  private void V()
  {
    Context localContext = this.p;
    if (localContext == null) {
      return;
    }
    o1.i.k(localContext, new b());
  }
  
  private void u(Cursor paramCursor)
  {
    AsyncTask.execute(new g0(paramCursor));
  }
  
  private void v()
  {
    Object localObject1 = this.D;
    if ((localObject1 != null) && (((Cursor)localObject1).moveToFirst()))
    {
      Object localObject2 = new f(this.p, this.D, 2131558496, this.E);
      localObject1 = new ListView(this.p);
      ((View)localObject1).setBackgroundResource(2131232409);
      ((ListView)localObject1).setAdapter((ListAdapter)localObject2);
      localObject2 = new h(this.p, (View)localObject1);
      ((PopupWindow)localObject2).setWidth(-1);
      ((PopupWindow)localObject2).setInputMethodMode(2);
      ((AdapterView)localObject1).setOnItemClickListener(new c((h)localObject2));
      ((PopupWindow)localObject2).showAsDropDown(getActivity().getActionBar().getCustomView());
    }
  }
  
  private com.android.calendar.common.j z(Intent paramIntent)
  {
    com.android.calendar.common.j localj = new com.android.calendar.common.j();
    Uri localUri = paramIntent.getData();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("getEventInfoFromIntent(): uri:");
    localStringBuilder.append(localUri);
    z.a("Cal:D:BaseEditFragment", localStringBuilder.toString());
    long l1;
    if ((localUri != null) && (!TextUtils.isEmpty(localUri.getLastPathSegment()))) {
      try
      {
        l1 = Long.parseLong(localUri.getLastPathSegment());
      }
      catch (NumberFormatException localNumberFormatException)
      {
        z.d("Cal:D:BaseEditFragment", "getEventInfoFromIntent(): no event id, create new event", localNumberFormatException);
      }
    } else {
      l1 = -1L;
    }
    boolean bool = paramIntent.getBooleanExtra("allDay", false);
    long l2 = System.currentTimeMillis();
    if (paramIntent.hasExtra("beginTime")) {
      l2 = paramIntent.getLongExtra("beginTime", -1L);
    }
    long l3;
    if (paramIntent.hasExtra("endTime")) {
      l3 = paramIntent.getLongExtra("endTime", -1L);
    } else {
      l3 = -1L;
    }
    Calendar localCalendar;
    if (l3 != -1L)
    {
      localCalendar = Calendar.getInstance();
      localj.c = localCalendar;
      if (bool) {
        localCalendar.setTimeZone(TimeZone.getTimeZone("UTC"));
      }
      localj.c.setTimeInMillis(l3);
    }
    if (l2 != -1L)
    {
      localCalendar = Calendar.getInstance();
      localj.b = localCalendar;
      if (bool) {
        localCalendar.setTimeZone(TimeZone.getTimeZone("UTC"));
      }
      localj.b.setTimeInMillis(l2);
    }
    localj.a = l1;
    if (bool) {
      localj.f = 16L;
    } else {
      localj.f = 0L;
    }
    if (paramIntent.hasExtra("reminder_state")) {
      localj.g = paramIntent.getIntExtra("reminder_state", 0);
    }
    if (paramIntent.hasExtra("reminder")) {
      localj.h = paramIntent.getIntExtra("reminder", 0);
    }
    if (paramIntent.hasExtra("use_miui_calendar")) {
      this.I = paramIntent.getBooleanExtra("use_miui_calendar", false);
    }
    if (paramIntent.hasExtra("title")) {
      localj.i = paramIntent.getStringExtra("title");
    }
    if (paramIntent.hasExtra("rrule")) {
      localj.j = paramIntent.getStringExtra("rrule");
    }
    if (paramIntent.hasExtra("location")) {
      localj.l = paramIntent.getStringExtra("location");
    }
    if (paramIntent.hasExtra("description")) {
      localj.k = paramIntent.getStringExtra("description");
    }
    if (paramIntent.hasExtra("ep")) {
      localj.m = ((HashMap)paramIntent.getSerializableExtra("ep"));
    }
    if (paramIntent.hasExtra("key_clip_text")) {
      this.o = paramIntent.getStringExtra("key_clip_text");
    }
    return localj;
  }
  
  protected abstract View B(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle);
  
  public boolean D()
  {
    return true;
  }
  
  boolean E()
  {
    if (this.d != null) {
      return false;
    }
    if ((this.c.getEx().getOriginalStart() == this.c.getEx().getStart()) && (this.c.getEx().getOriginalEnd() == this.c.getEx().getEnd()))
    {
      if (!this.c.getEx().getAttendeeList().isEmpty()) {
        return false;
      }
      return this.c.isEmpty();
    }
    return false;
  }
  
  protected abstract boolean F();
  
  public abstract Event H();
  
  public boolean J(int paramInt)
  {
    if (paramInt != 2131361883)
    {
      if (paramInt != 2131361889)
      {
        if ((paramInt == 2131362422) && (X()))
        {
          com.miui.calendar.util.g0.d("edit_event_click_calendar_selector");
          v();
        }
      }
      else
      {
        if (this.c == null)
        {
          z.m("Cal:D:BaseEditFragment", "onActionBarItemSelected(): model is NULL");
          return true;
        }
        if ((!com.android.calendar.settings.j.m(this.p)) || (!o1.i.a(this.p)))
        {
          if (!(this instanceof o1)) {
            break label141;
          }
          if ((this.c.getEx() != null) && (this.c.getEx().getReminders() != null) && (!this.c.getEx().getReminders().isEmpty()))
          {
            V();
            return true;
          }
        }
        I();
        break label316;
        label141:
        V();
        return true;
      }
    }
    else
    {
      Object localObject;
      if (F())
      {
        this.r = null;
        localObject = new l.b((Context)new WeakReference(this.p).get());
        ((l.b)localObject).F(2131886488);
        ((l.b)localObject).j(16843605);
        ((l.b)localObject).z(17039370, new g(this));
        ((l.b)localObject).r(17039360, null);
        localObject = ((l.b)localObject).a();
        this.r = ((l)localObject);
        ((Dialog)localObject).show();
      }
      else
      {
        localObject = this.c;
        if ((localObject != null) && (((Event)localObject).getId() != -1L)) {
          paramInt = 0;
        } else {
          paramInt = 1;
        }
        if ((paramInt != 0) && (k.b(this.p)))
        {
          k.c(this.p, new a());
        }
        else
        {
          this.q.a(1);
          this.q.run();
        }
      }
    }
    label316:
    return true;
  }
  
  protected void K() {}
  
  protected void L() {}
  
  protected void M() {}
  
  protected void N()
  {
    m localm = (m)getActivity();
    if (localm != null)
    {
      localm.finish();
      if (DeviceUtils.L()) {
        localm.overridePendingTransition(0, 0);
      }
    }
  }
  
  public abstract void O(boolean paramBoolean);
  
  protected void P() {}
  
  public boolean Q()
  {
    Event localEvent = this.c;
    if ((localEvent != null) && ((this.D != null) || (localEvent.getEx().getUri() != null))) {
      return x(false);
    }
    return false;
  }
  
  public boolean R()
  {
    Event localEvent = this.c;
    if ((localEvent != null) && ((this.D != null) || (localEvent.getEx().getUri() != null))) {
      return x(true);
    }
    return false;
  }
  
  public void T(Cursor paramCursor)
  {
    this.D = paramCursor;
    if ((paramCursor != null) && (paramCursor.getCount() != 0))
    {
      if (((this instanceof q0)) || ((this instanceof m1)) || ((this instanceof z0)))
      {
        this.D.moveToFirst();
        int i1 = 0;
        int i3;
        for (int i2 = 0;; i2++)
        {
          i3 = i1;
          if (i2 >= this.D.getCount()) {
            break;
          }
          i3 = this.D.getColumnIndexOrThrow("account_type");
          int i4 = this.D.getColumnIndexOrThrow("calendar_displayName");
          paramCursor = this.D.getString(i3);
          String str = this.D.getString(i4);
          if ((("com.xiaomi".equals(paramCursor)) && ("calendar_displayname_xiaomi".equals(str))) || (("LOCAL".equals(paramCursor)) && ("calendar_displayname_local".equals(str))))
          {
            i3 = 1;
            break;
          }
          this.D.moveToNext();
        }
        if (i3 == 0)
        {
          paramCursor = new l.b(this.p);
          paramCursor.F(2131887048).j(16843605).m(2131887046).z(2131887047, this).r(17039369, this).v(this);
          this.v = paramCursor.J();
        }
        this.D.moveToFirst();
      }
      if (X()) {
        L();
      }
      return;
    }
    paramCursor = new l.b(this.p);
    paramCursor.F(2131887048).j(16843605).m(2131887045).z(2131887047, this).r(17039369, this).v(this);
    this.v = paramCursor.J();
  }
  
  protected void W()
  {
    A();
    int i1;
    if (this.l == null) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    long l1 = this.n;
    long l2 = this.m;
    if ((l1 < l2) || ((l1 == 0L) && (i1 != 0))) {
      this.n = j.h(l2);
    }
    if (i1 == 0)
    {
      this.c.getEx().setCalendarAccessLevel(0);
      this.a = 15;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("startQuery: uri for event is ");
      localStringBuilder.append(this.l.toString());
      Log.d("Cal:D:BaseEditFragment", localStringBuilder.toString());
      this.g.startQuery(1, null, this.l, j.e, null, null, null);
    }
    else
    {
      this.a = 8;
      Log.d("Cal:D:BaseEditFragment", "startQuery: Editing a new event.");
      this.c.getEx().setStart(this.m);
      this.c.getEx().setEnd(this.n);
      this.c.getEx().setSelfAttendeeStatus(1);
      this.g.startQuery(8, null, CalendarContract.Calendars.CONTENT_URI, j.h, "calendar_access_level>=500 AND visible=1", null, null);
      this.i = 3;
      P();
    }
  }
  
  public abstract boolean X();
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    this.p = paramContext;
    this.b = new j(paramContext);
    this.g = new i(paramContext.getContentResolver());
    this.c = H();
    if (com.android.calendar.settings.j.h(this.p)) {
      this.c.setNeedAlarm(true);
    }
    C();
    this.y = ((InputMethodManager)paramContext.getSystemService("input_method"));
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (paramDialogInterface == this.v)
    {
      this.q.a(1);
      this.q.run();
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramDialogInterface == this.v)
    {
      this.q.a(1);
      this.q.run();
      if (paramInt == -1)
      {
        paramDialogInterface = new Intent();
        paramDialogInterface.setComponent(new ComponentName(this.p, NewEventImportActivity.class));
        this.p.startActivity(paramDialogInterface);
      }
    }
  }
  
  public void onClick(View paramView)
  {
    J(paramView.getId());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      if (paramBundle.containsKey("key_model")) {
        this.e = ((Event)paramBundle.getSerializable("key_model"));
      }
      if (paramBundle.containsKey("key_edit_state")) {
        this.i = paramBundle.getInt("key_edit_state");
      }
      if (paramBundle.containsKey("key_event")) {
        this.k = ((EventBundle)paramBundle.getSerializable("key_event"));
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return B(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    Object localObject = this.h;
    if (localObject != null)
    {
      ((l)localObject).dismiss();
      this.h = null;
    }
    localObject = this.r;
    if (localObject != null)
    {
      ((l)localObject).dismiss();
      this.r = null;
    }
    localObject = this.D;
    if (localObject != null) {
      ((Cursor)localObject).close();
    }
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return J(paramMenuItem.getItemId());
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    Q();
    paramBundle.putSerializable("key_model", this.c);
    paramBundle.putInt("key_edit_state", this.i);
    if ((this.k == null) && (this.j != null))
    {
      Object localObject1 = new EventBundle(null);
      this.k = ((EventBundle)localObject1);
      Object localObject2 = this.j;
      ((EventBundle)localObject1).id = ((com.android.calendar.common.j)localObject2).a;
      localObject2 = ((com.android.calendar.common.j)localObject2).b;
      if (localObject2 != null) {
        ((EventBundle)localObject1).start = ((Calendar)localObject2).getTimeInMillis();
      }
      localObject1 = this.j.c;
      if (localObject1 != null) {
        this.k.end = ((Calendar)localObject1).getTimeInMillis();
      }
    }
    paramBundle.putSerializable("key_event", this.k);
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.f = ((m)getActivity()).J();
    W();
  }
  
  protected void w()
  {
    if (this.i == 0)
    {
      final boolean bool1 = TextUtils.isEmpty(this.c.getEx().getSyncId());
      boolean bool2 = this.c.getEx().isFirstEventInSeries();
      int i1 = 0;
      if (bool1)
      {
        if (bool2) {
          localObject = new CharSequence[1];
        } else {
          localObject = new CharSequence[2];
        }
      }
      else
      {
        if (bool2) {
          localObject = new CharSequence[2];
        } else {
          localObject = new CharSequence[3];
        }
        localObject[0] = this.p.getText(2131886925);
        i1 = 1;
      }
      localObject[i1] = this.p.getText(2131886923);
      if (!bool2) {
        localObject[(i1 + 1)] = this.p.getText(2131886924);
      }
      l locall = this.h;
      if ((locall != null) && (locall.isShowing())) {
        return;
      }
      Object localObject = new l.b(this.p).F(2131886495).l((CharSequence[])localObject, new d(bool1)).J();
      this.h = ((l)localObject);
      ((Dialog)localObject).setOnCancelListener(new e());
    }
  }
  
  public abstract boolean x(boolean paramBoolean);
  
  protected CharSequence y()
  {
    miuix.appcompat.app.a locala = this.f;
    if (locala == null) {
      return "";
    }
    return locala.m();
  }
  
  private static class EventBundle
    implements Serializable
  {
    private static final long serialVersionUID = 1L;
    long end = -1L;
    long id = -1L;
    long start = -1L;
  }
  
  class a
    implements DialogInterface.OnDismissListener
  {
    a() {}
    
    public void onDismiss(DialogInterface paramDialogInterface)
    {
      NewBaseEditFragment.this.q.a(1);
      NewBaseEditFragment.this.q.run();
    }
  }
  
  class b
    implements i.d
  {
    b() {}
    
    public void a()
    {
      o1.i.i(NewBaseEditFragment.this.p);
    }
    
    public void b()
    {
      NewBaseEditFragment localNewBaseEditFragment = NewBaseEditFragment.this;
      if ((localNewBaseEditFragment instanceof o1)) {
        g.c(g.v.e(new ArrayList()));
      } else {
        NewBaseEditFragment.r(localNewBaseEditFragment);
      }
    }
  }
  
  class c
    implements AdapterView.OnItemClickListener
  {
    c(h paramh) {}
    
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      paramAdapterView = NewBaseEditFragment.this;
      paramAdapterView.E = paramInt;
      if (paramAdapterView.X()) {
        NewBaseEditFragment.this.K();
      }
      this.a.dismiss();
    }
  }
  
  class d
    implements DialogInterface.OnClickListener
  {
    d(boolean paramBoolean) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      int i = 3;
      if (paramInt == 0)
      {
        paramDialogInterface = NewBaseEditFragment.this;
        if (!bool1) {
          i = 1;
        }
        paramDialogInterface.i = i;
        if (i == 1)
        {
          EventEx localEventEx = paramDialogInterface.c.getEx();
          if (bool1) {
            paramDialogInterface = null;
          } else {
            paramDialogInterface = NewBaseEditFragment.this.c.getEx().getSyncId();
          }
          localEventEx.setOriginalSyncId(paramDialogInterface);
          NewBaseEditFragment.this.c.getEx().setOriginalId(NewBaseEditFragment.this.c.getId());
        }
      }
      else if (paramInt == 1)
      {
        paramDialogInterface = NewBaseEditFragment.this;
        if (bool1) {
          i = 2;
        }
        paramDialogInterface.i = i;
      }
      else if (paramInt == 2)
      {
        NewBaseEditFragment.this.i = 2;
      }
      NewBaseEditFragment.this.P();
    }
  }
  
  class e
    implements DialogInterface.OnCancelListener
  {
    e() {}
    
    public void onCancel(DialogInterface paramDialogInterface)
    {
      paramDialogInterface = new Intent();
      NewBaseEditFragment.this.getActivity().setResult(10022, paramDialogInterface);
      NewBaseEditFragment.this.N();
    }
  }
  
  public static class f
    extends ResourceCursorAdapter
  {
    private int a;
    
    public f(Context paramContext, Cursor paramCursor)
    {
      super(2131558497, paramCursor);
      this.a = -1;
      setDropDownViewResource(2131558496);
    }
    
    public f(Context paramContext, Cursor paramCursor, int paramInt1, int paramInt2)
    {
      super(paramInt1, paramCursor);
      this.a = paramInt2;
    }
    
    public f(Context paramContext, Cursor paramCursor, boolean paramBoolean)
    {
      super(2131558497, paramCursor, paramBoolean);
      this.a = -1;
      setDropDownViewResource(2131558496);
    }
    
    public void bindView(View paramView, Context paramContext, Cursor paramCursor)
    {
      Resources localResources = paramContext.getResources();
      int i = paramCursor.getColumnIndexOrThrow("calendar_displayName");
      int j = paramCursor.getColumnIndexOrThrow("ownerAccount");
      int k = paramCursor.getColumnIndexOrThrow("calendar_color");
      int m = paramCursor.getColumnIndexOrThrow("account_type");
      int n = paramCursor.getColumnIndexOrThrow("account_name");
      try
      {
        str = paramCursor.getString(m);
        localObject = paramCursor.getString(n);
        paramContext = paramCursor.getString(i);
        i = Utils.x(localResources, (String)localObject, str, paramContext, paramCursor.getInt(k));
        try
        {
          str = Utils.o1(localResources, paramContext);
        }
        catch (Exception paramContext) {}
        z.a("Cal:D:BaseEditFragment", paramContext.getMessage());
      }
      catch (Exception paramContext)
      {
        i = 0;
      }
      String str = "";
      Object localObject = (a)paramView.getTag();
      paramContext = (Context)localObject;
      if (localObject == null)
      {
        paramContext = new a(null);
        paramContext.a = ((TextView)paramView.findViewById(2131362421));
        paramContext.b = ((TextView)paramView.findViewById(2131362096));
        paramContext.c = ((TextView)paramView.findViewById(2131361845));
        paramContext.d = ((ImageView)paramView.findViewById(2131362094));
        paramContext.e = paramView.findViewById(2131362149);
        paramView.setTag(paramContext);
      }
      paramView = paramContext.a;
      if (paramView != null)
      {
        paramView.setText(str);
        paramView = x0.n(localResources, i, localResources.getDimensionPixelSize(2131166011));
        paramContext.a.setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, new BitmapDrawable(localResources, paramView), null);
        d0.a(paramContext.a, -1, -1, 0, -1);
        paramContext.a.setCompoundDrawablePadding(localResources.getDimensionPixelSize(2131165752));
      }
      paramView = paramContext.b;
      if (paramView != null)
      {
        paramView.setText(str);
        paramView = paramContext.c;
        if (paramView != null) {
          paramView.setText(Utils.p1(localResources, paramCursor.getString(j)));
        }
      }
      paramView = paramContext.d;
      if (paramView != null) {
        paramView.setImageBitmap(x0.n(localResources, i, localResources.getDimensionPixelSize(2131166011)));
      }
      paramView = paramContext.e;
      if (paramView != null)
      {
        i = this.a;
        if (i >= 0)
        {
          if (i == paramCursor.getPosition()) {
            i = 2131231316;
          } else {
            i = 2131230973;
          }
          paramView.setBackgroundResource(i);
        }
      }
    }
    
    private static class a
    {
      TextView a;
      TextView b;
      TextView c;
      ImageView d;
      View e;
    }
  }
  
  protected static class g
    implements DialogInterface.OnClickListener
  {
    private WeakReference<NewBaseEditFragment> a;
    
    public g(NewBaseEditFragment paramNewBaseEditFragment)
    {
      this.a = new WeakReference(paramNewBaseEditFragment);
    }
    
    public void onClick(final DialogInterface paramDialogInterface, int paramInt)
    {
      paramDialogInterface = (NewBaseEditFragment)this.a.get();
      if (this.a.get() == null) {
        return;
      }
      if (paramDialogInterface.c.getId() == -1L) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      if ((paramInt != 0) && (k.b(paramDialogInterface.p)))
      {
        k.c(paramDialogInterface.p, new a(paramDialogInterface));
      }
      else
      {
        paramDialogInterface.q.a(1);
        paramDialogInterface.q.run();
      }
    }
    
    class a
      implements DialogInterface.OnDismissListener
    {
      a(NewBaseEditFragment paramNewBaseEditFragment) {}
      
      public void onDismiss(DialogInterface paramDialogInterface)
      {
        paramDialogInterface.q.a(1);
        paramDialogInterface.q.run();
      }
    }
  }
  
  class h
    implements Runnable
  {
    private int a = -1;
    
    h() {}
    
    public void a(int paramInt)
    {
      this.a = paramInt;
    }
    
    public void run()
    {
      Object localObject1 = NewBaseEditFragment.this;
      if ((((NewBaseEditFragment)localObject1).c != null) && (((NewBaseEditFragment)localObject1).p != null))
      {
        ((NewBaseEditFragment)localObject1).w = false;
        if (((NewBaseEditFragment)localObject1).i == 0) {
          ((NewBaseEditFragment)localObject1).i = 3;
        }
        if ((this.a & 0x2) != 0)
        {
          localObject1 = ((NewBaseEditFragment)localObject1).d;
          if ((localObject1 != null) && (((Event)localObject1).getEx().canModifyCalendar()))
          {
            if (NewBaseEditFragment.this.d.getEx().getCalendarId() != NewBaseEditFragment.this.c.getEx().getCalendarId()) {
              bool = true;
            } else {
              bool = false;
            }
            break label109;
          }
        }
        boolean bool = false;
        label109:
        Object localObject2;
        if ((this.a & 0x2) != 0)
        {
          localObject1 = NewBaseEditFragment.this.c;
          if ((localObject1 != null) && ((((Event)localObject1).getEx().canRespond()) || (NewBaseEditFragment.this.c.getEx().canModifyEvent())) && (NewBaseEditFragment.this.R()) && (!NewBaseEditFragment.this.E()) && (NewBaseEditFragment.this.c.getEx().normalizeReminders()))
          {
            localObject2 = NewBaseEditFragment.s(NewBaseEditFragment.this);
            localObject1 = NewBaseEditFragment.this;
            ((j)localObject2).p(((NewBaseEditFragment)localObject1).c, ((NewBaseEditFragment)localObject1).d, ((NewBaseEditFragment)localObject1).i, bool, new a());
            break label277;
          }
        }
        if ((this.a & 0x2) != 0)
        {
          localObject1 = NewBaseEditFragment.this;
          if ((((NewBaseEditFragment)localObject1).c != null) && (((NewBaseEditFragment)localObject1).E())) {
            t0.f(NewBaseEditFragment.this.p.getApplicationContext(), 2131886526);
          }
        }
        label277:
        long l1;
        long l2;
        if ((this.a & 0x4) != 0)
        {
          localObject1 = NewBaseEditFragment.this.d;
          if ((localObject1 != null) && (((Event)localObject1).getEx().canModifyCalendar()))
          {
            l1 = NewBaseEditFragment.this.c.getEx().getStart();
            l2 = NewBaseEditFragment.this.c.getEx().getEnd();
            localObject1 = NewBaseEditFragment.this;
            i = ((NewBaseEditFragment)localObject1).i;
            if (i != 1)
            {
              if (i != 2)
              {
                if (i != 3) {
                  i = -1;
                } else {
                  i = 2;
                }
              }
              else {
                i = 1;
              }
            }
            else {
              i = 0;
            }
            new b(((NewBaseEditFragment)localObject1).p, ((Fragment)localObject1).getActivity(), true).u(l1, l2, NewBaseEditFragment.this.d, i);
          }
        }
        int i = this.a;
        if ((i & 0x1) != 0)
        {
          if ((i & 0x2) != 0)
          {
            localObject1 = NewBaseEditFragment.this;
            if (((NewBaseEditFragment)localObject1).p != null)
            {
              l1 = ((NewBaseEditFragment)localObject1).c.getEx().getStart();
              l2 = NewBaseEditFragment.this.c.getEx().getEnd();
              if (NewBaseEditFragment.this.c.isAllDay())
              {
                localObject2 = Utils.U(NewBaseEditFragment.this.p);
                localObject1 = new r0("UTC");
                ((r0)localObject1).D(l1);
                ((r0)localObject1).L((String)localObject2);
                ((r0)localObject1).P(true);
                ((r0)localObject1).L("UTC");
                ((r0)localObject1).D(l2);
                ((r0)localObject1).L((String)localObject2);
                ((r0)localObject1).P(true);
              }
            }
          }
          NewBaseEditFragment.this.N();
        }
        localObject1 = NewBaseEditFragment.this.getActivity();
        Objects.requireNonNull(localObject1);
        localObject1 = ((Activity)localObject1).getCurrentFocus();
        if (localObject1 != null)
        {
          NewBaseEditFragment.t(NewBaseEditFragment.this).hideSoftInputFromWindow(((View)localObject1).getWindowToken(), 0);
          ((View)localObject1).clearFocus();
        }
        return;
      }
      z.m("Cal:D:BaseEditFragment", "Done.run(): model or context is NULL");
    }
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        int i;
        if (!NewBaseEditFragment.this.c.getEx().getAttendeeList().isEmpty())
        {
          if (NewBaseEditFragment.this.c.getEx().getUri() != null) {
            i = 2131887406;
          } else {
            i = 2131886394;
          }
        }
        else if (NewBaseEditFragment.this.c.getEx().getUri() != null) {
          i = NewBaseEditFragment.this.G;
        } else {
          i = NewBaseEditFragment.this.H;
        }
        NewBaseEditFragment.this.M();
        t0.f(NewBaseEditFragment.this.p.getApplicationContext(), i);
        b2.a.l(NewBaseEditFragment.this.p, "preference_defaultCalendar_migrated", true);
      }
    }
  }
  
  private class i
    extends AsyncQueryHandler
  {
    public i(ContentResolver paramContentResolver)
    {
      super();
    }
    
    protected void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
    {
      if (paramCursor == null) {
        return;
      }
      paramObject = (m)NewBaseEditFragment.this.getActivity();
      if ((paramObject != null) && (!paramObject.isFinishing()))
      {
        long l;
        boolean bool;
        if (paramInt != 1)
        {
          Object localObject;
          if (paramInt != 2)
          {
            if (paramInt != 4)
            {
              if (paramInt != 8)
              {
                NewBaseEditFragment.j(NewBaseEditFragment.this, paramCursor);
              }
              else
              {
                z.a("Cal:D:BaseEditFragment", "onQueryComplete(): TOKEN_CALENDARS");
                try
                {
                  l = NewBaseEditFragment.this.c.getEx().getCalendarId();
                  if (l == -1L)
                  {
                    paramObject = Utils.Q0(paramCursor);
                    localObject = new java/lang/StringBuilder;
                    ((StringBuilder)localObject).<init>();
                    ((StringBuilder)localObject).append("onQueryComplete: setting cursor with ");
                    ((StringBuilder)localObject).append(paramObject.getCount());
                    ((StringBuilder)localObject).append(" calendars");
                    Log.d("Cal:D:BaseEditFragment", ((StringBuilder)localObject).toString());
                    localObject = NewBaseEditFragment.this;
                    ((NewBaseEditFragment)localObject).E = Utils.o(((NewBaseEditFragment)localObject).p, paramObject);
                    NewBaseEditFragment.this.T(paramObject);
                    paramObject = NewBaseEditFragment.this;
                    if (paramObject.E == -1) {
                      paramObject.E = Utils.o(paramObject.p, paramObject.D);
                    }
                    paramObject = NewBaseEditFragment.this;
                    paramInt = paramObject.E;
                    if ((paramInt < 0) || (!paramObject.D.moveToPosition(paramInt)))
                    {
                      paramObject = new java/lang/StringBuilder;
                      paramObject.<init>();
                      paramObject.append("onQueryComplete(): move to pos ");
                      paramObject.append(NewBaseEditFragment.this.E);
                      paramObject.append(" failed when creating event, cursor.getCount():");
                      paramObject.append(NewBaseEditFragment.this.D.getCount());
                      Log.w("Cal:D:BaseEditFragment", paramObject.toString());
                    }
                  }
                  else
                  {
                    j.s(NewBaseEditFragment.this.c, paramCursor);
                    j.s(NewBaseEditFragment.this.d, paramCursor);
                    localObject = Utils.Q0(paramCursor);
                    paramObject = NewBaseEditFragment.this;
                    paramObject.E = Utils.n((Cursor)localObject, paramObject.c.getEx().getCalendarId());
                    NewBaseEditFragment.this.T((Cursor)localObject);
                    paramObject = NewBaseEditFragment.this;
                    if (!paramObject.D.moveToPosition(paramObject.E))
                    {
                      paramObject = new java/lang/StringBuilder;
                      paramObject.<init>();
                      paramObject.append("onQueryComplete(): move to pos ");
                      paramObject.append(NewBaseEditFragment.this.E);
                      paramObject.append(" failed when editing event, cursor.getCount():");
                      paramObject.append(NewBaseEditFragment.this.D.getCount());
                      Log.w("Cal:D:BaseEditFragment", paramObject.toString());
                    }
                    if ((NewBaseEditFragment.p(NewBaseEditFragment.this)) && ((NewBaseEditFragment.n(NewBaseEditFragment.this)) || (!j.f(NewBaseEditFragment.this.c))))
                    {
                      NewBaseEditFragment.q(NewBaseEditFragment.this, false);
                      paramObject = Long.toString(NewBaseEditFragment.this.c.getEx().getCalendarId());
                      NewBaseEditFragment.l(NewBaseEditFragment.this).startQuery(8, null, CalendarContract.Calendars.CONTENT_URI, j.h, "_id=?", new String[] { paramObject }, null);
                    }
                  }
                  NewBaseEditFragment.j(NewBaseEditFragment.this, paramCursor);
                  NewBaseEditFragment.m(NewBaseEditFragment.this, 8);
                }
                finally
                {
                  NewBaseEditFragment.j(NewBaseEditFragment.this, paramCursor);
                }
              }
            }
            else
            {
              z.a("Cal:D:BaseEditFragment", "onQueryComplete(): TOKEN_REMINDERS");
              try
              {
                while (paramCursor.moveToNext())
                {
                  paramObject = Reminder.valueOf(paramCursor.getInt(1), paramCursor.getInt(2));
                  NewBaseEditFragment.this.c.getEx().addReminder(paramObject);
                  NewBaseEditFragment.this.d.getEx().addReminder(paramObject);
                }
                Collections.sort(NewBaseEditFragment.this.c.getEx().getReminders());
                Collections.sort(NewBaseEditFragment.this.d.getEx().getReminders());
                NewBaseEditFragment.j(NewBaseEditFragment.this, paramCursor);
                NewBaseEditFragment.m(NewBaseEditFragment.this, 4);
              }
              finally
              {
                NewBaseEditFragment.j(NewBaseEditFragment.this, paramCursor);
              }
            }
          }
          else
          {
            z.a("Cal:D:BaseEditFragment", "onQueryComplete(): TOKEN_ATTENDEES");
            try
            {
              paramObject = NewBaseEditFragment.this;
              if (paramCursor.getCount() > 0) {
                bool = true;
              } else {
                bool = false;
              }
              NewBaseEditFragment.o(paramObject, bool);
              while (paramCursor.moveToNext())
              {
                String str = paramCursor.getString(1);
                localObject = paramCursor.getString(2);
                paramInt = paramCursor.getInt(4);
                if (paramCursor.getInt(3) == 2)
                {
                  if (localObject != null)
                  {
                    NewBaseEditFragment.this.c.getEx().setOrganizer((String)localObject);
                    NewBaseEditFragment.this.c.getEx().setIsOrganizer(NewBaseEditFragment.this.c.getEx().getOwnerAccount().equalsIgnoreCase((String)localObject));
                    NewBaseEditFragment.this.d.getEx().setOrganizer((String)localObject);
                    NewBaseEditFragment.this.d.getEx().setIsOrganizer(NewBaseEditFragment.this.d.getEx().getOwnerAccount().equalsIgnoreCase((String)localObject));
                  }
                  if (TextUtils.isEmpty(str))
                  {
                    NewBaseEditFragment.this.c.getEx().setOrganizerDisplayName(NewBaseEditFragment.this.c.getEx().getOrganizer());
                    NewBaseEditFragment.this.d.getEx().setOrganizerDisplayName(NewBaseEditFragment.this.d.getEx().getOrganizer());
                  }
                  else
                  {
                    NewBaseEditFragment.this.c.getEx().setOrganizerDisplayName(str);
                    NewBaseEditFragment.this.d.getEx().setOrganizerDisplayName(str);
                  }
                }
                if ((localObject != null) && (NewBaseEditFragment.this.c.getEx().getOwnerAccount() != null) && (NewBaseEditFragment.this.c.getEx().getOwnerAccount().equalsIgnoreCase((String)localObject)))
                {
                  int i = paramCursor.getInt(0);
                  NewBaseEditFragment.this.c.getEx().setOwnerAttendeeId(i);
                  NewBaseEditFragment.this.c.getEx().setSelfAttendeeStatus(paramInt);
                  NewBaseEditFragment.this.d.getEx().setOwnerAttendeeId(i);
                  NewBaseEditFragment.this.d.getEx().setSelfAttendeeStatus(paramInt);
                }
                else
                {
                  paramObject = new com/android/calendar/common/event/schema/Attendee;
                  paramObject.<init>(str, (String)localObject);
                  paramObject.setStatus(paramInt);
                  NewBaseEditFragment.this.c.getEx().addAttendee(paramObject);
                  NewBaseEditFragment.this.d.getEx().addAttendee(paramObject);
                }
              }
              NewBaseEditFragment.j(NewBaseEditFragment.this, paramCursor);
              NewBaseEditFragment.m(NewBaseEditFragment.this, 2);
            }
            finally
            {
              NewBaseEditFragment.j(NewBaseEditFragment.this, paramCursor);
            }
          }
        }
        else
        {
          z.a("Cal:D:BaseEditFragment", "onQueryComplete(): TOKEN_EVENT");
          if (paramCursor.getCount() == 0)
          {
            NewBaseEditFragment.j(NewBaseEditFragment.this, paramCursor);
            NewBaseEditFragment.this.q.a(1);
            paramObject = NewBaseEditFragment.this;
            paramObject.w = false;
            paramObject.q.run();
            return;
          }
          paramObject = NewBaseEditFragment.this;
          paramObject.d = paramObject.H();
          j.t(NewBaseEditFragment.this.d, paramCursor);
          j.t(NewBaseEditFragment.this.c, paramCursor);
          NewBaseEditFragment.j(NewBaseEditFragment.this, paramCursor);
          NewBaseEditFragment.this.d.getEx().setUri(NewBaseEditFragment.k(NewBaseEditFragment.this).toString());
          NewBaseEditFragment.this.c.getEx().setUri(NewBaseEditFragment.k(NewBaseEditFragment.this).toString());
          NewBaseEditFragment.this.c.getEx().setOriginalStart(NewBaseEditFragment.this.m);
          NewBaseEditFragment.this.c.getEx().setOriginalEnd(NewBaseEditFragment.this.n);
          paramCursor = NewBaseEditFragment.this.c.getEx();
          paramObject = NewBaseEditFragment.this;
          if (paramObject.m == paramObject.d.getEx().getStart()) {
            bool = true;
          } else {
            bool = false;
          }
          paramCursor.setFirstEventInSeries(bool);
          NewBaseEditFragment.this.c.getEx().setStart(NewBaseEditFragment.this.m);
          NewBaseEditFragment.this.c.getEx().setEnd(NewBaseEditFragment.this.n);
          l = NewBaseEditFragment.this.c.getId();
          if ((NewBaseEditFragment.this.c.getEx().hasAttendeeData()) && (l != -1L))
          {
            paramCursor = CalendarContract.Attendees.CONTENT_URI;
            paramObject = Long.toString(l);
            NewBaseEditFragment.l(NewBaseEditFragment.this).startQuery(2, null, paramCursor, j.j, "event_id=? AND attendeeEmail IS NOT NULL", new String[] { paramObject }, null);
          }
          else
          {
            NewBaseEditFragment.m(NewBaseEditFragment.this, 2);
          }
          if (NewBaseEditFragment.this.c.getEx().hasAlarm())
          {
            paramObject = CalendarContract.Reminders.CONTENT_URI;
            paramCursor = Long.toString(l);
            NewBaseEditFragment.l(NewBaseEditFragment.this).startQuery(4, null, paramObject, j.f, "event_id=?", new String[] { paramCursor }, null);
          }
          else
          {
            NewBaseEditFragment.m(NewBaseEditFragment.this, 4);
          }
          NewBaseEditFragment.l(NewBaseEditFragment.this).startQuery(8, null, CalendarContract.Calendars.CONTENT_URI, j.h, "calendar_access_level>=500 AND visible=1", null, null);
          paramObject = NewBaseEditFragment.this;
          paramCursor = paramObject.c;
          if ((paramCursor instanceof BirthdayEvent)) {
            s1.b.c(paramObject.p, (BirthdayEvent)paramCursor);
          } else if ((paramCursor instanceof AnniversaryEvent)) {
            s1.a.f(paramObject.p, (AnniversaryEvent)paramCursor);
          } else if ((paramCursor instanceof CountdownEvent)) {
            c.f(paramObject.p, (CountdownEvent)paramCursor);
          } else if ((paramCursor instanceof TrainEvent)) {
            s1.i.c(paramObject.p, (TrainEvent)paramCursor);
          } else {
            e.i(paramObject.p, paramCursor);
          }
          NewBaseEditFragment.m(NewBaseEditFragment.this, 1);
        }
        return;
      }
      NewBaseEditFragment.j(NewBaseEditFragment.this, paramCursor);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.NewBaseEditFragment
 * JD-Core Version:    0.7.0.1
 */