package com.android.calendar.event;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.util.LruCache;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewStub;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.s;
import com.airbnb.lottie.LottieAnimationView;
import com.android.calendar.common.Utils;
import com.android.calendar.common.b;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.g.n;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.o0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import miuix.appcompat.app.m;
import miuix.view.HapticCompat;
import org.greenrobot.eventbus.ThreadMode;
import pc.l;

public class EditEventActivity
  extends b
{
  private static boolean L = false;
  private String D;
  private String E;
  private String F;
  private String G;
  private View H;
  private final LruCache<Integer, View> I = new LruCache(1);
  private boolean J = true;
  private Handler K;
  private Intent b;
  private int c;
  private int d = 0;
  private ArrayList<NewBaseEditFragment> e;
  private ArrayList<Integer> f;
  private Set<String> g;
  private NewBaseEditFragment h;
  private miuix.appcompat.app.a i;
  private Button j;
  private Button k;
  private LottieAnimationView l;
  private LottieAnimationView m;
  private LottieAnimationView n;
  private LottieAnimationView o;
  private ImageView p;
  private ImageView q;
  private ImageView r;
  private ImageView v;
  private TextView w;
  private TextView x;
  private TextView y;
  private TextView z;
  
  private void f0()
  {
    new l.a(this).a(2131558586, null, new f(this));
  }
  
  private void g0()
  {
    Object localObject = (InputMethodManager)getSystemService("input_method");
    if (L) {
      ((InputMethodManager)localObject).hideSoftInputFromWindow(this.p.getWindowToken(), 0);
    } else {
      ((InputMethodManager)localObject).hideSoftInputFromWindow(this.l.getWindowToken(), 0);
    }
    if (this.d != 0)
    {
      if (L) {
        s0(this.p, 2131231082);
      } else {
        s0(this.l, 2131231082);
      }
      this.w.setTextColor(getResources().getColor(2131099917));
    }
    if (this.d != 1)
    {
      if (L) {
        s0(this.q, 2131230958);
      } else {
        s0(this.m, 2131230958);
      }
      this.x.setTextColor(getResources().getColor(2131099917));
    }
    if (this.d != 2)
    {
      if (L) {
        s0(this.r, 2131230936);
      } else {
        s0(this.n, 2131230936);
      }
      this.y.setTextColor(getResources().getColor(2131099917));
    }
    if (this.d != 3)
    {
      if (L) {
        s0(this.v, 2131231060);
      } else {
        s0(this.o, 2131231060);
      }
      this.z.setTextColor(getResources().getColor(2131099917));
    }
    int i1 = this.d;
    LottieAnimationView localLottieAnimationView;
    if (i1 != 0)
    {
      if (i1 != 1)
      {
        if (i1 != 2)
        {
          if (i1 == 3)
          {
            if (!L)
            {
              if (!this.o.p())
              {
                localLottieAnimationView = this.o;
                if (x0.s0(getApplicationContext())) {
                  localObject = "star_dark.json";
                } else {
                  localObject = "star.json";
                }
                localLottieAnimationView.setAnimation((String)localObject);
                this.o.u();
              }
            }
            else {
              this.v.setImageResource(2131231061);
            }
            this.z.setTextColor(getResources().getColor(2131099916));
            localObject = this.H;
            if (localObject != null) {
              ((View)localObject).setVisibility(8);
            }
          }
        }
        else
        {
          if (!L)
          {
            if (!this.n.p())
            {
              localLottieAnimationView = this.n;
              if (x0.s0(getApplicationContext())) {
                localObject = "flag_dark.json";
              } else {
                localObject = "flag.json";
              }
              localLottieAnimationView.setAnimation((String)localObject);
              this.n.u();
            }
          }
          else {
            this.r.setImageResource(2131230937);
          }
          this.y.setTextColor(getResources().getColor(2131099916));
          localObject = this.H;
          if (localObject != null) {
            ((View)localObject).setVisibility(8);
          }
        }
      }
      else
      {
        if (!L)
        {
          if (!this.m.p())
          {
            localLottieAnimationView = this.m;
            if (x0.s0(getApplicationContext())) {
              localObject = "cake_dark.json";
            } else {
              localObject = "cake.json";
            }
            localLottieAnimationView.setAnimation((String)localObject);
            this.m.u();
          }
        }
        else {
          this.q.setImageResource(2131230959);
        }
        this.x.setTextColor(getResources().getColor(2131099916));
        localObject = this.H;
        if (localObject != null) {
          ((View)localObject).setVisibility(8);
        }
      }
    }
    else
    {
      if (!L)
      {
        if (!this.l.p())
        {
          localLottieAnimationView = this.l;
          if (x0.s0(getApplicationContext())) {
            localObject = "tick_dark.json";
          } else {
            localObject = "tick.json";
          }
          localLottieAnimationView.setAnimation((String)localObject);
          this.l.u();
        }
      }
      else {
        this.p.setImageResource(2131231083);
      }
      this.w.setTextColor(getResources().getColor(2131099916));
      if (this.c == -1)
      {
        localObject = this.H;
        if (localObject != null) {
          ((View)localObject).setVisibility(0);
        }
      }
    }
  }
  
  private void k0()
  {
    Object localObject = J();
    this.i = ((miuix.appcompat.app.a)localObject);
    if (localObject == null) {
      return;
    }
    if (DeviceUtils.G())
    {
      this.i.x(8);
      this.j = new Button(this);
      this.k = new Button(this);
      this.j.setId(2131361883);
      this.k.setId(2131361889);
      this.j.setBackgroundResource(2131230890);
      this.k.setBackgroundResource(2131230891);
      this.i.H(this.j);
      this.i.E(this.k);
      this.i.F(0);
      this.i.G(false);
    }
    else
    {
      this.i.v(2131558553);
      this.j = ((Button)findViewById(2131361883));
      this.k = ((Button)findViewById(2131361889));
    }
    localObject = this.k;
    if ((localObject != null) && (this.j != null))
    {
      ((View)localObject).setContentDescription(getResources().getString(2131886143));
      this.j.setContentDescription(getResources().getString(2131886142));
    }
  }
  
  private void l0(int paramInt)
  {
    this.e = new ArrayList();
    this.f = new ArrayList();
    this.g = new HashSet();
    boolean bool = this.b.getBooleanExtra("extra_is_new", false);
    int i1 = this.c;
    int i2 = 2131886508;
    ArrayList localArrayList;
    if (i1 != 0)
    {
      if (i1 != 1)
      {
        if (i1 != 2)
        {
          if (i1 != 3)
          {
            if (i1 != 4)
            {
              this.e.add(new o1(this.b));
              this.f.add(Integer.valueOf(2131886508));
            }
            else
            {
              this.e.add(new s1(this.b));
              this.f.add(Integer.valueOf(2131887733));
            }
          }
          else
          {
            this.e.add(new m1(this.b));
            localArrayList = this.f;
            if (bool) {
              i2 = 2131886511;
            } else {
              i2 = 2131886515;
            }
            localArrayList.add(Integer.valueOf(i2));
          }
        }
        else
        {
          this.e.add(new q0(this.b));
          localArrayList = this.f;
          if (bool) {
            i2 = 2131886509;
          } else {
            i2 = 2131886513;
          }
          localArrayList.add(Integer.valueOf(i2));
        }
      }
      else
      {
        this.e.add(new z0(this.b));
        localArrayList = this.f;
        if (bool) {
          i2 = 2131886510;
        } else {
          i2 = 2131886514;
        }
        localArrayList.add(Integer.valueOf(i2));
      }
    }
    else
    {
      this.e.add(new o1(this.b));
      localArrayList = this.f;
      if (!bool) {
        i2 = 2131886512;
      }
      localArrayList.add(Integer.valueOf(i2));
    }
    h0(paramInt);
  }
  
  private void s0(ImageView paramImageView, int paramInt)
  {
    AsyncTask.execute(new c(this, paramInt, paramImageView));
  }
  
  private void t0(int paramInt)
  {
    this.w.setContentDescription("");
    this.x.setContentDescription("");
    this.y.setContentDescription("");
    this.z.setContentDescription("");
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt == 3)
          {
            this.z.announceForAccessibility(this.G);
            this.z.setContentDescription(this.G);
          }
        }
        else
        {
          this.y.announceForAccessibility(this.F);
          this.y.setContentDescription(this.F);
        }
      }
      else
      {
        this.x.announceForAccessibility(this.E);
        this.x.setContentDescription(this.E);
      }
    }
    else
    {
      this.w.announceForAccessibility(this.D);
      this.w.setContentDescription(this.D);
    }
  }
  
  private void u0(boolean paramBoolean)
  {
    if (com.miui.calendar.util.z0.q(this, paramBoolean)) {
      com.miui.calendar.util.z0.D(this, new a());
    }
  }
  
  protected void h0(int paramInt)
  {
    if ((this.e != null) && (this.f != null))
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("changeTab(): index:");
      ((StringBuilder)localObject1).append(paramInt);
      z.a("Cal:D:EditEventActivity", ((StringBuilder)localObject1).toString());
      t0(paramInt);
      if ((this.e.size() == 1) && (paramInt != 0))
      {
        this.e.add(new z0(this.b));
        this.e.add(new q0(this.b));
        this.e.add(new m1(this.b));
        this.f.add(Integer.valueOf(2131886510));
        this.f.add(Integer.valueOf(2131886509));
        this.f.add(Integer.valueOf(2131886511));
      }
      if (this.d != paramInt)
      {
        this.d = paramInt;
        g0();
      }
      Object localObject2 = getSupportFragmentManager();
      localObject1 = ((FragmentManager)localObject2).m();
      Object localObject3 = this.h;
      if (localObject3 != null) {
        ((s)localObject1).n((Fragment)localObject3);
      }
      localObject3 = ((NewBaseEditFragment)this.e.get(this.d)).getClass().getName();
      localObject2 = (NewBaseEditFragment)((FragmentManager)localObject2).i0((String)localObject3);
      this.h = ((NewBaseEditFragment)localObject2);
      if (localObject2 == null) {
        this.h = ((NewBaseEditFragment)this.e.get(this.d));
      }
      if (this.i != null)
      {
        localObject2 = this.k;
        if ((localObject2 != null) && (this.j != null))
        {
          ((View)localObject2).setOnClickListener(this.h);
          this.j.setOnClickListener(this.h);
        }
      }
      if (this.g.contains(localObject3))
      {
        ((s)localObject1).u(this.h);
      }
      else
      {
        this.g.add(localObject3);
        ((s)localObject1).c(2131362740, this.h, (String)localObject3);
      }
      ((s)localObject1).i();
      if (this.i != null)
      {
        int i1 = ((Integer)this.f.get(paramInt)).intValue();
        if (DeviceUtils.G()) {
          this.i.A(i1);
        } else {
          ((TextView)this.i.j().findViewById(2131363373)).setText(i1);
        }
      }
      g0.f("key_edit_event_tab_clicked", new String[] { "strvalue", String.valueOf(paramInt) });
    }
  }
  
  protected int i0()
  {
    return this.b.getIntExtra("extra_key_edit_type", -1);
  }
  
  public View j0(int paramInt)
  {
    return (View)this.I.get(Integer.valueOf(paramInt));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    com.miui.calendar.util.z0.r(this, paramInt1, paramInt2, new b());
  }
  
  public void onBackPressed()
  {
    NewBaseEditFragment localNewBaseEditFragment = this.h;
    if (localNewBaseEditFragment != null) {
      localNewBaseEditFragment.J(2131361883);
    } else {
      super.onBackPressed();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(null);
    if (paramBundle != null)
    {
      this.d = paramBundle.getInt("bundle_key_tab_index", 0);
    }
    else if ((com.miui.calendar.util.z0.l(this)) && (this.c != 4) && (!com.miui.calendar.util.z0.m()) && (!com.miui.calendar.util.z0.i(this)))
    {
      this.J = false;
      com.miui.calendar.util.z0.B(this);
      return;
    }
    setContentView(2131558445);
    getWindow().clearFlags(134217728);
    this.K = new Handler();
    f0();
    pc.c.c().o(this);
    L = DeviceUtils.L();
    this.b = getIntent();
    this.c = i0();
    o0.i(this.b);
    if (L)
    {
      paramBundle = (ViewStub)findViewById(2131363292);
      localObject1 = (ViewStub)findViewById(2131363290);
      localObject2 = (ViewStub)findViewById(2131363289);
      localObject3 = (ViewStub)findViewById(2131363291);
      paramBundle = paramBundle.inflate();
      localObject1 = ((ViewStub)localObject1).inflate();
      localObject2 = ((ViewStub)localObject2).inflate();
      localObject3 = ((ViewStub)localObject3).inflate();
      this.p = ((ImageView)paramBundle.findViewById(2131363288));
      this.q = ((ImageView)((View)localObject1).findViewById(2131363288));
      this.r = ((ImageView)((View)localObject2).findViewById(2131363288));
      this.v = ((ImageView)((View)localObject3).findViewById(2131363288));
    }
    else
    {
      localObject3 = (ViewStub)findViewById(2131363297);
      localObject1 = (ViewStub)findViewById(2131363295);
      localObject2 = (ViewStub)findViewById(2131363294);
      paramBundle = (ViewStub)findViewById(2131363296);
      localObject3 = ((ViewStub)localObject3).inflate();
      localObject1 = ((ViewStub)localObject1).inflate();
      localObject2 = ((ViewStub)localObject2).inflate();
      paramBundle = paramBundle.inflate();
      this.l = ((LottieAnimationView)((View)localObject3).findViewById(2131363288));
      this.m = ((LottieAnimationView)((View)localObject1).findViewById(2131363288));
      this.n = ((LottieAnimationView)((View)localObject2).findViewById(2131363288));
      this.o = ((LottieAnimationView)paramBundle.findViewById(2131363288));
    }
    Object localObject1 = findViewById(2131362428);
    paramBundle = findViewById(2131362037);
    Object localObject2 = findViewById(2131361965);
    Object localObject3 = findViewById(2131362232);
    if (this.c != -1)
    {
      ((View)localObject1).setVisibility(8);
      paramBundle.setVisibility(8);
      ((View)localObject2).setVisibility(8);
      ((View)localObject3).setVisibility(8);
    }
    else
    {
      ((View)localObject1).setOnTouchListener(new c(this.p, 0));
      paramBundle.setOnTouchListener(new c(this.q, 1));
      ((View)localObject2).setOnTouchListener(new c(this.r, 2));
      ((View)localObject3).setOnTouchListener(new c(this.v, 3));
    }
    this.w = ((TextView)findViewById(2131363303));
    this.x = ((TextView)findViewById(2131363301));
    this.y = ((TextView)findViewById(2131363300));
    this.z = ((TextView)findViewById(2131363302));
    this.D = getResources().getString(2131886112, new Object[] { getResources().getString(2131886507) });
    this.E = getResources().getString(2131886112, new Object[] { getResources().getString(2131886505) });
    this.F = getResources().getString(2131886112, new Object[] { getResources().getString(2131886504) });
    this.G = getResources().getString(2131886112, new Object[] { getResources().getString(2131886506) });
    if (this.c == -1)
    {
      paramBundle = findViewById(2131363532);
      this.H = paramBundle;
      paramBundle.setVisibility(0);
      v.e(this.H);
      this.H.setOnClickListener(new d(this));
    }
    k0();
    this.K.postDelayed(new e(this), 2000L);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    pc.c.c().q(this);
    Object localObject = this.e;
    if (localObject != null)
    {
      ((ArrayList)localObject).clear();
      this.e = null;
    }
    localObject = this.K;
    if (localObject != null)
    {
      ((Handler)localObject).removeCallbacksAndMessages(null);
      this.K = null;
    }
  }
  
  @l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.n paramn)
  {
    if (paramn == null) {
      return;
    }
    finish();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      Utils.x0(this);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    if (this.h.isAdded())
    {
      NewBaseEditFragment localNewBaseEditFragment = this.h;
      if ((localNewBaseEditFragment instanceof z0)) {
        localNewBaseEditFragment.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
      }
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.J) {
      g0();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("bundle_key_tab_index", this.d);
    super.onSaveInstanceState(paramBundle);
  }
  
  class a
    implements z0.h
  {
    a() {}
    
    public void a()
    {
      EditEventActivity.this.recreate();
    }
    
    public void b(boolean paramBoolean) {}
  }
  
  class b
    implements z0.h
  {
    b() {}
    
    public void a()
    {
      EditEventActivity.this.recreate();
    }
    
    public void b(boolean paramBoolean)
    {
      if (paramBoolean) {
        EditEventActivity.this.finish();
      } else {
        EditEventActivity.e0(EditEventActivity.this, true);
      }
    }
  }
  
  private class c
    implements View.OnTouchListener
  {
    private int a;
    
    public c(ImageView paramImageView, int paramInt)
    {
      this.a = paramInt;
    }
    
    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      if (paramMotionEvent.getActionMasked() == 0) {
        HapticCompat.performHapticFeedback(paramView, miuix.view.f.k);
      }
      if ((paramMotionEvent.getActionMasked() == 1) && (paramMotionEvent.getActionMasked() != 3)) {
        EditEventActivity.this.h0(this.a);
      }
      return true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.EditEventActivity
 * JD-Core Version:    0.7.0.1
 */