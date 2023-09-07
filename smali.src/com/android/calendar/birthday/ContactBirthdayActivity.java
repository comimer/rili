package com.android.calendar.birthday;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.d;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.p0.a;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import com.miui.calendar.view.LoadingLayout;
import com.miui.calendar.widget.EmptyView;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;
import miuix.appcompat.app.m;

public class ContactBirthdayActivity
  extends com.android.calendar.common.b
  implements View.OnClickListener
{
  private Context b;
  private ListView c;
  private d d;
  private Button e;
  private Button f;
  private TextView g;
  private LoadingLayout h;
  private EmptyView i;
  private View j;
  private e k = new e(null);
  private c l;
  private miuix.appcompat.app.a m;
  private boolean n = false;
  private boolean o;
  
  private void g0()
  {
    if (e.e(this.k) != null)
    {
      Iterator localIterator = e.e(this.k).keySet().iterator();
      while (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        e.e(this.k).put(localPair, Boolean.FALSE);
      }
      k0();
      this.d.notifyDataSetChanged();
    }
  }
  
  private void h0()
  {
    miuix.appcompat.app.a locala = J();
    this.m = locala;
    if (locala == null) {
      return;
    }
    if (DeviceUtils.G())
    {
      this.m.x(8);
      this.m.A(2131886735);
      this.e = new Button(this);
      this.f = new Button(this);
      this.e.setId(2131361883);
      this.f.setId(2131361900);
      this.e.setBackgroundResource(2131230890);
      this.e.setContentDescription(getString(2131886142));
      this.f.setBackgroundResource(2131230893);
      this.m.H(this.e);
      this.m.E(this.f);
    }
    else
    {
      this.m.v(2131558509);
      this.e = ((Button)this.m.j().findViewById(2131361883));
      this.f = ((Button)this.m.j().findViewById(2131361900));
      this.g = ((TextView)this.m.j().findViewById(2131363373));
    }
    this.e.setOnClickListener(this);
    this.f.setOnClickListener(this);
  }
  
  private void j0()
  {
    if (e.e(this.k) != null)
    {
      Iterator localIterator = e.e(this.k).keySet().iterator();
      while (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        e.e(this.k).put(localPair, Boolean.TRUE);
      }
      k0();
      this.d.notifyDataSetChanged();
    }
  }
  
  private void k0()
  {
    int i1;
    Object localObject;
    if (e.e(this.k) != null)
    {
      Iterator localIterator = e.e(this.k).values().iterator();
      i1 = 1;
      i2 = 0;
      for (;;)
      {
        i3 = i1;
        i4 = i2;
        if (!localIterator.hasNext()) {
          break;
        }
        Boolean localBoolean = (Boolean)localIterator.next();
        localObject = localBoolean;
        if (localBoolean == null) {
          localObject = Boolean.FALSE;
        }
        if (((Boolean)localObject).booleanValue()) {
          i2++;
        } else {
          i1 = 0;
        }
      }
    }
    int i3 = 0;
    int i4 = i3;
    this.o = (i3 ^ 0x1);
    boolean bool = DeviceUtils.G();
    int i2 = 2131886905;
    if (bool)
    {
      localObject = this.f;
      if (this.o) {
        i1 = 2131230893;
      } else {
        i1 = 2131230892;
      }
      ((View)localObject).setBackgroundResource(i1);
      localObject = this.f;
      if (!this.o) {
        i2 = 2131886901;
      }
      ((View)localObject).setContentDescription(getString(i2));
    }
    else
    {
      localObject = this.f;
      if (!this.o) {
        i2 = 2131886901;
      }
      ((TextView)localObject).setText(getString(i2));
    }
    if (DeviceUtils.G()) {
      this.m.B(getString(2131886758, new Object[] { Integer.valueOf(i4) }));
    } else {
      this.g.setText(getString(2131886758, new Object[] { Integer.valueOf(i4) }));
    }
  }
  
  private void l0()
  {
    this.h.a();
    this.e.setOnClickListener(this);
    if ((e.a(this.k) != null) && (e.a(this.k).g() > 0))
    {
      this.f.setOnClickListener(this);
      this.j.setVisibility(0);
      k0();
    }
    else
    {
      this.j.setVisibility(8);
      this.f.setEnabled(false);
      this.c.setEmptyView(this.i);
    }
    this.d.notifyDataSetChanged();
    invalidateOptionsMenu();
  }
  
  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (i1 != 2131361883)
    {
      if (i1 != 2131361900)
      {
        if (i1 == 2131362605)
        {
          new b(this.k, this.b.getApplicationContext()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
          Utils.x0(this.b);
          finish();
          g0.d("key_contact_birthday_import_clicked");
          t0.d(this.b, getString(2131886248), 1);
        }
      }
      else
      {
        if (this.o) {
          j0();
        } else {
          g0();
        }
        g0.f("key_contact_birthday_select_all_clicked", new String[] { "type", String.valueOf(this.o) });
      }
    }
    else
    {
      g0.d("key_contact_birthday_cancel_clicked");
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558441);
    this.b = this;
    h0();
    this.h = ((LoadingLayout)findViewById(2131362703));
    this.i = ((EmptyView)findViewById(2131362406));
    this.j = findViewById(2131362605);
    paramBundle = (ListView)findViewById(2131362689);
    this.c = paramBundle;
    paramBundle.setEmptyView(this.h);
    paramBundle = new d(this);
    this.d = paramBundle;
    this.c.setAdapter(paramBundle);
    this.j.setOnClickListener(this);
    this.i.setEmptyVerticalBias(0.33F);
    this.j.setOnTouchListener(new r1.b(this));
    paramBundle = new c(this);
    this.l = paramBundle;
    paramBundle.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    c localc = this.l;
    if (localc != null)
    {
      localc.cancel(true);
      this.l = null;
    }
    this.k.r(false);
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  private static class b
    extends AsyncTask<Void, Void, Void>
  {
    private ArrayList<Long> a;
    private ArrayList<BirthdayEvent> b;
    private ContactBirthdayActivity.e c;
    private final WeakReference<Context> d;
    
    public b(ContactBirthdayActivity.e parame, Context paramContext)
    {
      this.c = parame;
      this.d = new WeakReference(paramContext);
    }
    
    protected Void a(Void... paramVarArgs)
    {
      if ((ContactBirthdayActivity.e.g(this.c) != null) && (ContactBirthdayActivity.e.a(this.c) != null) && (ContactBirthdayActivity.e.i(this.c) != null) && (ContactBirthdayActivity.e.e(this.c) != null))
      {
        z.a("Cal:D:ContactBirthdayActivity", "Import: birthdays start");
        this.a = new ArrayList();
        int i = 0;
        for (int j = 0; j < ContactBirthdayActivity.e.g(this.c).g(); j++)
        {
          paramVarArgs = ContactBirthdayActivity.e.g(this.c).d(j);
          if (paramVarArgs != null)
          {
            BirthdayEvent localBirthdayEvent = BirthdayEvent.fromJson(paramVarArgs.c(1));
            if ((ContactBirthdayActivity.e.b(this.c) != null) && (ContactBirthdayActivity.e.b(this.c).get(Integer.valueOf(localBirthdayEvent.getContactId())) != null)) {
              localBirthdayEvent.setContactId(((Integer)ContactBirthdayActivity.e.b(this.c).get(Integer.valueOf(localBirthdayEvent.getContactId()))).intValue());
            }
            Boolean localBoolean = (Boolean)ContactBirthdayActivity.e.i(this.c).get(localBirthdayEvent.getContactKey());
            if ((localBoolean != null) && (localBoolean.booleanValue()) && (!((Boolean)ContactBirthdayActivity.e.e(this.c).get(localBirthdayEvent.getContactKey())).booleanValue()))
            {
              long l = paramVarArgs.g(0).longValue();
              this.a.add(Long.valueOf(l));
            }
          }
        }
        this.b = new ArrayList();
        for (j = i; j < ContactBirthdayActivity.e.a(this.c).g(); j++)
        {
          paramVarArgs = ContactBirthdayActivity.e.a(this.c).d(j);
          paramVarArgs = r1.a.a((Context)this.d.get(), paramVarArgs);
          if (paramVarArgs != null) {
            if ((!((Boolean)ContactBirthdayActivity.e.i(this.c).get(paramVarArgs.getContactKey())).booleanValue()) && (((Boolean)ContactBirthdayActivity.e.e(this.c).get(paramVarArgs.getContactKey())).booleanValue()))
            {
              this.b.add(paramVarArgs);
            }
            else if ((((Boolean)ContactBirthdayActivity.e.i(this.c).get(paramVarArgs.getContactKey())).booleanValue()) && (!((BirthdayEvent)ContactBirthdayActivity.e.m(this.c).get(paramVarArgs.getContactKey())).equals(paramVarArgs)) && (((Boolean)ContactBirthdayActivity.e.e(this.c).get(paramVarArgs.getContactKey())).booleanValue()))
            {
              this.a.add((Long)ContactBirthdayActivity.e.k(this.c).get(paramVarArgs.getContactKey()));
              this.b.add(paramVarArgs);
            }
          }
        }
        r1.a.p((Context)this.d.get());
        paramVarArgs = new StringBuilder();
        paramVarArgs.append("Import: birthdays add count = ");
        paramVarArgs.append(this.b.size());
        paramVarArgs.append(", delete count = ");
        paramVarArgs.append(this.a.size());
        z.a("Cal:D:ContactBirthdayActivity", paramVarArgs.toString());
      }
      return null;
    }
    
    protected void b(Void paramVoid)
    {
      paramVoid = (Context)this.d.get();
      if (paramVoid == null) {
        return;
      }
      r1.a.c(paramVoid, this.a);
      r1.a.r(paramVoid, this.b);
      this.c.p(false);
    }
    
    protected void onCancelled()
    {
      super.onCancelled();
      this.c.p(false);
    }
    
    protected void onPreExecute()
    {
      super.onPreExecute();
      this.c.p(true);
    }
  }
  
  private static class c
    extends AsyncTask<Void, Void, p0.a>
  {
    private WeakReference<ContactBirthdayActivity> a;
    
    public c(ContactBirthdayActivity paramContactBirthdayActivity)
    {
      this.a = new WeakReference(paramContactBirthdayActivity);
    }
    
    private boolean a()
    {
      WeakReference localWeakReference = this.a;
      return (localWeakReference != null) && (localWeakReference.get() != null);
    }
    
    protected p0.a b(Void... paramVarArgs)
    {
      try
      {
        if ((isCancelled()) && (!a())) {
          return null;
        }
        p0.a locala = r1.a.y((Context)this.a.get());
        if ((isCancelled()) && (!a())) {
          return null;
        }
        ContactBirthdayActivity.e.h(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get()), r1.a.w((Context)this.a.get()));
        HashMap localHashMap = new java/util/HashMap;
        localHashMap.<init>();
        if ((isCancelled()) && (!a())) {
          return null;
        }
        Object localObject = ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get());
        paramVarArgs = new java/util/HashMap;
        paramVarArgs.<init>();
        ContactBirthdayActivity.e.j((ContactBirthdayActivity.e)localObject, paramVarArgs);
        localObject = ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get());
        paramVarArgs = new java/util/HashMap;
        paramVarArgs.<init>();
        ContactBirthdayActivity.e.l((ContactBirthdayActivity.e)localObject, paramVarArgs);
        localObject = ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get());
        paramVarArgs = new java/util/HashMap;
        paramVarArgs.<init>();
        ContactBirthdayActivity.e.n((ContactBirthdayActivity.e)localObject, paramVarArgs);
        paramVarArgs = null;
        int j;
        for (int i = 0; i < locala.g(); i++)
        {
          localObject = locala.d(i);
          if (r1.a.a(ContactBirthdayActivity.f0((ContactBirthdayActivity)this.a.get()), (p0.c)localObject) == null)
          {
            localObject = paramVarArgs;
            if (paramVarArgs == null)
            {
              localObject = new java/util/TreeSet;
              ((TreeSet)localObject).<init>();
            }
            ((TreeSet)localObject).add(Integer.valueOf(i));
            paramVarArgs = (Void[])localObject;
          }
          else
          {
            j = ((p0.c)localObject).e(0).intValue();
            int k = r1.a.u((p0.c)localObject);
            String str = r1.a.b((p0.c)localObject);
            if (str != null) {
              localHashMap.put(str, localObject);
            }
            ContactBirthdayActivity.e.i(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).put(BirthdayEvent.makeContactKey(j, k), Boolean.FALSE);
          }
        }
        if (paramVarArgs != null)
        {
          locala.c(true);
          locala.f(paramVarArgs);
        }
        paramVarArgs = ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get());
        localObject = new java/util/HashMap;
        ((HashMap)localObject).<init>();
        ContactBirthdayActivity.e.c(paramVarArgs, (HashMap)localObject);
        for (i = 0; i < ContactBirthdayActivity.e.g(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).g(); i++)
        {
          paramVarArgs = ContactBirthdayActivity.e.g(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).d(i);
          if (paramVarArgs != null)
          {
            long l = paramVarArgs.g(0).longValue();
            paramVarArgs = BirthdayEvent.fromJson(paramVarArgs.c(1));
            if ((paramVarArgs != null) && (ContactBirthdayActivity.e.i(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).containsKey(paramVarArgs.getContactKey())))
            {
              ContactBirthdayActivity.e.i(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).put(paramVarArgs.getContactKey(), Boolean.TRUE);
              ContactBirthdayActivity.e.m(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).put(paramVarArgs.getContactKey(), paramVarArgs);
              ContactBirthdayActivity.e.k(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).put(paramVarArgs.getContactKey(), Long.valueOf(l));
            }
            else
            {
              localObject = new java/lang/StringBuffer;
              ((StringBuffer)localObject).<init>();
              ((StringBuffer)localObject).append(paramVarArgs.getDateType());
              ((StringBuffer)localObject).append(paramVarArgs.isUseYear());
              ((StringBuffer)localObject).append(paramVarArgs.getFirstBirthMillis());
              ((StringBuffer)localObject).append(paramVarArgs.getName());
              localObject = ((StringBuffer)localObject).toString();
              if (localHashMap.containsKey(localObject))
              {
                j = ((p0.c)localHashMap.get(localObject)).e(0).intValue();
                ContactBirthdayActivity.e.b(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).put(Integer.valueOf(paramVarArgs.getContactId()), Integer.valueOf(j));
                paramVarArgs.setContactId(j);
                ContactBirthdayActivity.e.i(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).put(paramVarArgs.getContactKey(), Boolean.TRUE);
                ContactBirthdayActivity.e.m(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).put(paramVarArgs.getContactKey(), paramVarArgs);
                ContactBirthdayActivity.e.k(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).put(paramVarArgs.getContactKey(), Long.valueOf(l));
              }
            }
          }
        }
        localHashMap.clear();
        ContactBirthdayActivity.e.f(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get()), (HashMap)ContactBirthdayActivity.e.i(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).clone());
        paramVarArgs = new java/lang/StringBuilder;
        paramVarArgs.<init>();
        paramVarArgs.append("Load Birthdays: contact birthdays Count = ");
        paramVarArgs.append(locala.g());
        paramVarArgs.append(", imported Birthdays Count = ");
        paramVarArgs.append(ContactBirthdayActivity.e.g(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get())).g());
        z.a("Cal:D:ContactBirthdayActivity", paramVarArgs.toString());
        return locala;
      }
      catch (Exception paramVarArgs)
      {
        z.d("Cal:D:ContactBirthdayActivity", "BirthdayQueryTask()", paramVarArgs);
      }
      return null;
    }
    
    protected void c(p0.a parama)
    {
      if (a())
      {
        ContactBirthdayActivity.e.d(ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get()), parama);
        ContactBirthdayActivity.Z((ContactBirthdayActivity)this.a.get(), true);
        ContactBirthdayActivity.a0((ContactBirthdayActivity)this.a.get());
        ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get()).q(false);
      }
    }
    
    protected void onCancelled()
    {
      super.onCancelled();
      if (a())
      {
        ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get()).q(false);
        ContactBirthdayActivity.a0((ContactBirthdayActivity)this.a.get());
      }
    }
    
    protected void onPreExecute()
    {
      if (a())
      {
        ContactBirthdayActivity.d0((ContactBirthdayActivity)this.a.get()).q(true);
        ContactBirthdayActivity.e0((ContactBirthdayActivity)this.a.get()).d();
      }
    }
  }
  
  private class d
    extends BaseAdapter
  {
    private Context a;
    
    public d(Context paramContext)
    {
      this.a = paramContext;
    }
    
    public int getCount()
    {
      int i;
      if (ContactBirthdayActivity.e.a(ContactBirthdayActivity.d0(ContactBirthdayActivity.this)) != null) {
        i = ContactBirthdayActivity.e.a(ContactBirthdayActivity.d0(ContactBirthdayActivity.this)).g();
      } else {
        i = 0;
      }
      return i;
    }
    
    public Object getItem(int paramInt)
    {
      return null;
    }
    
    public long getItemId(int paramInt)
    {
      return 0L;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null)
      {
        paramView = LayoutInflater.from(this.a).inflate(2131558508, null);
        paramViewGroup = new b(paramView);
        paramView.setTag(paramViewGroup);
      }
      else
      {
        paramViewGroup = (b)paramView.getTag();
      }
      Object localObject = ContactBirthdayActivity.e.a(ContactBirthdayActivity.d0(ContactBirthdayActivity.this)).d(paramInt);
      final BirthdayEvent localBirthdayEvent = r1.a.a(this.a, (p0.c)localObject);
      if (localBirthdayEvent == null)
      {
        paramView.setVisibility(8);
        return paramView;
      }
      paramView.setVisibility(0);
      paramViewGroup.b.setText(r1.a.k(this.a, localBirthdayEvent.getName()));
      localObject = Calendar.getInstance();
      ((Calendar)localObject).setTimeInMillis(localBirthdayEvent.getFirstBirthMillis());
      boolean bool = true;
      int i = ((Calendar)localObject).get(1);
      int j = ((Calendar)localObject).get(2);
      paramInt = ((Calendar)localObject).get(5);
      if (localBirthdayEvent.getDateType() == 1) {
        localObject = Utils.J(this.a, i, j, paramInt, localBirthdayEvent.isUseYear(), false);
      } else {
        localObject = Utils.Q(this.a, i, j, paramInt, localBirthdayEvent.isUseYear(), false);
      }
      paramViewGroup.c.setText((CharSequence)localObject);
      Boolean localBoolean = (Boolean)ContactBirthdayActivity.e.e(ContactBirthdayActivity.d0(ContactBirthdayActivity.this)).get(localBirthdayEvent.getContactKey());
      localObject = (Boolean)ContactBirthdayActivity.e.i(ContactBirthdayActivity.d0(ContactBirthdayActivity.this)).get(localBirthdayEvent.getContactKey());
      CheckBox localCheckBox = paramViewGroup.d;
      if ((localBoolean == null) || (!localBoolean.booleanValue())) {
        bool = false;
      }
      localCheckBox.setChecked(bool);
      if ((localBoolean != null) && (localBoolean.booleanValue()) && (localObject != null) && (((Boolean)localObject).booleanValue())) {
        paramViewGroup.e.setVisibility(0);
      } else {
        paramViewGroup.e.setVisibility(8);
      }
      v.i(paramView);
      paramView.setOnClickListener(new a(localBirthdayEvent));
      return paramView;
    }
    
    class a
      implements View.OnClickListener
    {
      a(BirthdayEvent paramBirthdayEvent) {}
      
      public void onClick(View paramView)
      {
        paramView = (Boolean)ContactBirthdayActivity.e.e(ContactBirthdayActivity.d0(ContactBirthdayActivity.this)).get(localBirthdayEvent.getContactKey());
        boolean bool;
        if (paramView != null) {
          bool = paramView.booleanValue();
        } else {
          bool = false;
        }
        ContactBirthdayActivity.e.e(ContactBirthdayActivity.d0(ContactBirthdayActivity.this)).put(localBirthdayEvent.getContactKey(), Boolean.valueOf(Boolean.valueOf(bool).booleanValue() ^ true));
        ContactBirthdayActivity.b0(ContactBirthdayActivity.this);
        ContactBirthdayActivity.c0(ContactBirthdayActivity.this).notifyDataSetChanged();
      }
    }
    
    private class b
    {
      public View a;
      public TextView b;
      public TextView c;
      public CheckBox d;
      public TextView e;
      
      public b(View paramView)
      {
        this.a = paramView.findViewById(2131363074);
        this.b = ((TextView)paramView.findViewById(2131362858));
        this.c = ((TextView)paramView.findViewById(2131362247));
        this.d = ((CheckBox)paramView.findViewById(2131362603));
        this.e = ((TextView)paramView.findViewById(2131362609));
      }
    }
  }
  
  private static class e
  {
    private p0.a a;
    private p0.a b;
    private HashMap<Pair<Integer, Integer>, Boolean> c;
    private HashMap<Pair<Integer, Integer>, Boolean> d;
    private HashMap<Pair<Integer, Integer>, Long> e;
    private HashMap<Pair<Integer, Integer>, BirthdayEvent> f;
    private HashMap<Integer, Integer> g;
    private boolean h = true;
    private boolean i = false;
    private boolean j = false;
    
    private void o()
    {
      if ((!this.h) && (!this.i) && (!this.j))
      {
        p0.a locala = this.a;
        if (locala != null) {
          locala.a();
        }
        locala = this.b;
        if (locala != null) {
          locala.a();
        }
      }
    }
    
    public void p(boolean paramBoolean)
    {
      this.j = paramBoolean;
      o();
    }
    
    public void q(boolean paramBoolean)
    {
      this.i = paramBoolean;
      o();
    }
    
    public void r(boolean paramBoolean)
    {
      this.h = paramBoolean;
      o();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.birthday.ContactBirthdayActivity
 * JD-Core Version:    0.7.0.1
 */