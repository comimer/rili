package com.android.calendar.selectcalendars;

import android.accounts.Account;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.lifecycle.LiveData;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import androidx.work.WorkInfo;
import com.android.calendar.common.Utils;
import com.android.calendar.syncer.CalDavService;
import com.android.calendar.syncer.CalDavService.b;
import com.android.calendar.syncer.CalDavService.c;
import com.android.calendar.syncer.SyncWorker;
import com.android.calendar.syncer.SyncWorker.a;
import com.android.calendar.syncer.account.AccountHelper;
import com.android.calendar.syncer.account.AccountHelper.AccountType;
import com.android.calendar.syncer.account.AccountHelper.ImportType;
import com.android.calendar.syncer.model.AppDatabase;
import com.android.calendar.syncer.model.Service;
import com.android.calendar.syncer.model.ServiceDao;
import com.miui.calendar.card.schema.SimpleDialogSchema;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.c.b;
import com.miui.calendar.view.c.b.a;
import com.miui.calendar.view.i;
import com.miui.calendar.view.w;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import kotlin.u;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.w0;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;
import miuix.appcompat.widget.Spinner;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/AccountManagerAdapter;", "Landroidx/recyclerview/widget/RecyclerView$g;", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;", "Lcom/android/calendar/syncer/CalDavService$c;", "", "id", "", "refreshing", "Lkotlin/u;", "n", "", "b0", "R", "F", "M", "P", "", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;", "J", "a0", "Landroid/database/Cursor;", "c", "C", "Landroid/view/ViewGroup;", "parent", "viewType", "Z", "getItemCount", "holder", "position", "X", "I", "N", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;", "account", "S", "calendarRow", "Q", "L", "", "timestamp", "K", "g0", "D", "V", "T", "Lmiuix/appcompat/widget/Spinner;", "spinner", "c0", "G", "d0", "f0", "W", "U", "H", "h0", "Landroid/app/Activity;", "a", "Landroid/app/Activity;", "context", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;", "b", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;", "mDismissListener", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;", "mDeleteListener", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;", "d", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;", "mItemLongClickListener", "Landroid/view/LayoutInflater;", "e", "Landroid/view/LayoutInflater;", "mInflater", "Landroid/content/res/Resources;", "f", "Landroid/content/res/Resources;", "mRes", "", "g", "Ljava/util/List;", "mData", "h", "Landroid/database/Cursor;", "mCursor", "i", "mIdColumn", "j", "mName", "k", "mNameColumn", "l", "mColorColumn", "m", "mVisibleColumn", "mOwnerAccountColumn", "o", "mAccountNameColumn", "p", "mAccountTypeColumn", "q", "mCalendarSync5Column", "r", "mColorCalendarVisible", "v", "mColorCalendarHidden", "w", "mColorContainerSelected", "x", "mColorContainerNormal", "y", "mColorCalendarSecondaryVisible", "z", "mColorCalendarSecondaryHidden", "isMultipleMode", "E", "mDeleteEmailAccount", "", "[Ljava/lang/String;", "mFrequencyEntries", "", "Ljava/util/Map;", "mAccountGroupMap", "Landroid/os/Handler;", "Landroid/os/Handler;", "mHandler", "Lcom/android/calendar/syncer/CalDavService$b;", "Lcom/android/calendar/syncer/CalDavService;", "Lcom/android/calendar/syncer/CalDavService$b;", "davService", "Landroid/content/ServiceConnection;", "Landroid/content/ServiceConnection;", "mServiceConnection", "<init>", "(Landroid/app/Activity;Landroid/database/Cursor;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class AccountManagerAdapter
  extends RecyclerView.g<b>
  implements CalDavService.c
{
  public static final f K = new f(null);
  private static float L;
  private boolean D;
  private boolean E;
  private final String[] F;
  private Map<String, List<e>> G;
  private final Handler H;
  private volatile CalDavService.b I;
  private final ServiceConnection J;
  private Activity a;
  private final h b;
  private final g c;
  private final d d;
  private final LayoutInflater e;
  private Resources f;
  private List<a> g;
  private Cursor h;
  private int i;
  private int j;
  private int k;
  private int l;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private int r;
  private int v;
  private int w;
  private int x;
  private final int y;
  private final int z;
  
  public AccountManagerAdapter(Activity paramActivity, Cursor paramCursor, h paramh, g paramg, d paramd)
  {
    this.a = paramActivity;
    this.b = paramh;
    this.c = paramg;
    this.d = paramd;
    paramActivity = paramActivity.getSystemService("layout_inflater");
    r.d(paramActivity, "null cannot be cast to non-null type android.view.LayoutInflater");
    this.e = ((LayoutInflater)paramActivity);
    paramActivity = this.a.getResources();
    r.e(paramActivity, "context.resources");
    this.f = paramActivity;
    this.g = new ArrayList();
    paramActivity = Utils.D(this.a);
    r.d(paramActivity, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
    this.F = ((String[])paramActivity);
    this.G = new LinkedHashMap();
    this.H = new Handler();
    this.J = new j(this);
    this.y = this.f.getColor(2131099792);
    this.z = this.f.getColor(2131099791);
    int i1;
    if (L == 0.0F) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0) {
      L = this.f.getDisplayMetrics().density;
    }
    this.r = this.f.getColor(2131099794);
    this.v = this.f.getColor(2131099788);
    this.x = this.f.getColor(2131099799);
    this.w = this.f.getColor(2131099800);
  }
  
  private final void D(final a parama)
  {
    Object localObject1 = AccountHelper.a;
    Object localObject2 = this.a;
    Object localObject3 = parama.c();
    r.c(localObject3);
    String str = parama.b();
    r.c(str);
    localObject3 = ((AccountHelper)localObject1).j((Context)localObject2, new Account((String)localObject3, str), "import_type");
    if (r.a(localObject3, AccountHelper.ImportType.SUBSCRIPTION.getType()))
    {
      localObject1 = SyncWorker.k;
      localObject2 = parama.c();
      str = "";
      localObject3 = localObject2;
      if (localObject2 == null) {
        localObject3 = "";
      }
      parama = parama.b();
      if (parama == null) {
        parama = str;
      }
      parama = ((SyncWorker.a)localObject1).a(((SyncWorker.a)localObject1).c((String)localObject3, parama));
      localObject3 = this.a;
      r.d(localObject3, "null cannot be cast to non-null type com.android.calendar.selectcalendars.SelectVisibleCalendarsActivity");
      parama.h((SelectVisibleCalendarsActivity)localObject3, new c(this));
    }
    else if (!r.a(localObject3, AccountHelper.ImportType.IMPORT.getType()))
    {
      if (r.a(localObject3, AccountHelper.ImportType.CALDAV.getType()))
      {
        h.d(l0.a(w0.c()), null, null, new SuspendLambda(parama, null)
        {
          int label;
          
          public final kotlin.coroutines.c<u> create(Object paramAnonymousObject, kotlin.coroutines.c<?> paramAnonymousc)
          {
            return new 2(this.this$0, parama, paramAnonymousc);
          }
          
          public final Object invoke(k0 paramAnonymousk0, kotlin.coroutines.c<? super u> paramAnonymousc)
          {
            return ((2)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
          }
          
          public final Object invokeSuspend(Object paramAnonymousObject)
          {
            Object localObject1 = kotlin.coroutines.intrinsics.a.d();
            int i = this.label;
            if (i != 0)
            {
              if (i == 1) {
                kotlin.j.b(paramAnonymousObject);
              } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
              }
            }
            else
            {
              kotlin.j.b(paramAnonymousObject);
              paramAnonymousObject = h.b(l0.a(w0.b()), null, null, new SuspendLambda(this.this$0, parama)
              {
                int label;
                
                public final kotlin.coroutines.c<u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
                {
                  return new 1(this.this$0, this.$account, paramAnonymous2c);
                }
                
                public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super Long> paramAnonymous2c)
                {
                  return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(u.a);
                }
                
                public final Object invokeSuspend(Object paramAnonymous2Object)
                {
                  kotlin.coroutines.intrinsics.a.d();
                  if (this.label == 0)
                  {
                    kotlin.j.b(paramAnonymous2Object);
                    paramAnonymous2Object = ((AppDatabase)AppDatabase.Companion.getInstance(AccountManagerAdapter.k(this.this$0))).serviceDao();
                    String str = this.$account.c();
                    r.c(str);
                    return paramAnonymous2Object.getIdByAccountAndType(str, "caldav");
                  }
                  throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
              }, 3, null);
              this.label = 1;
              Object localObject2 = paramAnonymousObject.E(this);
              paramAnonymousObject = localObject2;
              if (localObject2 == localObject1) {
                return localObject1;
              }
            }
            paramAnonymousObject = (Long)paramAnonymousObject;
            if (paramAnonymousObject == null)
            {
              Toast.makeText(AccountManagerAdapter.k(this.this$0), AccountManagerAdapter.k(this.this$0).getString(2131886139), 0).show();
            }
            else
            {
              com.android.calendar.syncer.g.a.e(AccountManagerAdapter.k(this.this$0), paramAnonymousObject.longValue());
              AccountManagerAdapter.k(this.this$0).bindService(new Intent(AccountManagerAdapter.k(this.this$0), CalDavService.class), AccountManagerAdapter.v(this.this$0), 1);
            }
            return u.a;
          }
        }, 3, null);
      }
      else
      {
        parama = this.a;
        Toast.makeText(parama, parama.getString(2131886139), 0).show();
      }
    }
  }
  
  private static final void E(AccountManagerAdapter paramAccountManagerAdapter, WorkInfo paramWorkInfo)
  {
    r.f(paramAccountManagerAdapter, "this$0");
    if (paramWorkInfo == null) {
      return;
    }
    paramWorkInfo = paramWorkInfo.a();
    int i1 = i.a[paramWorkInfo.ordinal()];
    if ((i1 != 1) && (i1 != 2) && (i1 != 3)) {
      if (i1 != 4)
      {
        paramAccountManagerAdapter = paramAccountManagerAdapter.a;
        Toast.makeText(paramAccountManagerAdapter, paramAccountManagerAdapter.getString(2131887710), 0).show();
      }
      else
      {
        paramWorkInfo = paramAccountManagerAdapter.a;
        Toast.makeText(paramWorkInfo, paramWorkInfo.getString(2131887711), 0).show();
        paramAccountManagerAdapter.b.onDismiss();
      }
    }
  }
  
  private final void G(a parama)
  {
    if (parama == null) {
      return;
    }
    String str = parama.b();
    if (r.a(str, AccountHelper.AccountType.ACCOUNT_TYPE_EMAIL.getAccountType()))
    {
      this.E = true;
      W(parama);
    }
    else if (r.a(str, AccountHelper.AccountType.ACCOUNT_TYPE_XIAOMI.getAccountType()))
    {
      U();
    }
    else if (r.a(str, AccountHelper.AccountType.ACCOUNT_TYPE_LOCAL.getAccountType()))
    {
      if (k.q(parama.c(), "account_name_local", false, 2, null)) {
        U();
      } else {
        d0(parama);
      }
    }
    else if (r.a(str, AccountHelper.AccountType.ACCOUNT_TYPE_CALENDAR.getAccountType()))
    {
      d0(parama);
    }
    else
    {
      f0();
    }
  }
  
  private final void H(a parama)
  {
    AccountHelper localAccountHelper = AccountHelper.a;
    Activity localActivity = this.a;
    String str = parama.c();
    r.c(str);
    parama = parama.b();
    r.c(parama);
    parama = AccountHelper.e(localAccountHelper, localActivity, str, parama, null, null, false, 56, null);
    if (parama != null) {
      localAccountHelper.k(this.a, parama);
    }
  }
  
  private final String K(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault());
    r.c(paramString);
    paramString = new Date(Long.parseLong(paramString));
    return this.f.getString(2131886770, new Object[] { localSimpleDateFormat.format(paramString) });
  }
  
  private final a L(e parame)
  {
    Object localObject = this.g;
    if (localObject != null)
    {
      r.c(localObject);
      if (((List)localObject).size() >= 1)
      {
        localObject = this.g;
        if (localObject != null)
        {
          Iterator localIterator = ((Iterable)localObject).iterator();
          while (localIterator.hasNext())
          {
            localObject = (a)localIterator.next();
            if ((k.q(parame.a(), ((a)localObject).c(), false, 2, null)) && (k.q(parame.b(), ((a)localObject).b(), false, 2, null))) {
              return localObject;
            }
          }
        }
      }
    }
    return null;
  }
  
  private final void N(Cursor paramCursor)
  {
    Object localObject1 = this.h;
    if ((localObject1 != null) && (paramCursor != localObject1))
    {
      r.c(localObject1);
      ((Cursor)localObject1).close();
    }
    if (paramCursor == null)
    {
      this.h = paramCursor;
      this.g = null;
      return;
    }
    this.h = paramCursor;
    this.i = paramCursor.getColumnIndexOrThrow("_id");
    this.j = paramCursor.getColumnIndexOrThrow("name");
    this.k = paramCursor.getColumnIndexOrThrow("calendar_displayName");
    this.l = paramCursor.getColumnIndexOrThrow("calendar_color");
    this.m = paramCursor.getColumnIndexOrThrow("visible");
    this.n = paramCursor.getColumnIndexOrThrow("ownerAccount");
    this.o = paramCursor.getColumnIndexOrThrow("account_name");
    this.p = paramCursor.getColumnIndexOrThrow("account_type");
    this.q = paramCursor.getColumnIndexOrThrow("cal_sync5");
    this.G.clear();
    paramCursor.moveToPosition(-1);
    if (this.g == null) {
      this.g = new ArrayList();
    }
    localObject1 = this.g;
    r.c(localObject1);
    Object localObject2 = ((Iterable)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (a)((Iterator)localObject2).next();
      if (((a)localObject1).f()) {
        H((a)localObject1);
      }
    }
    localObject1 = this.g;
    if (localObject1 != null) {
      ((List)localObject1).clear();
    }
    while (paramCursor.moveToNext())
    {
      localObject2 = new e();
      ((e)localObject2).p(paramCursor.getLong(this.i));
      ((e)localObject2).o(paramCursor.getString(this.k));
      ((e)localObject2).n(paramCursor.getInt(this.l));
      if (paramCursor.getInt(this.m) != 0) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      ((e)localObject2).t(bool1);
      ((e)localObject2).s(paramCursor.getString(this.n));
      ((e)localObject2).k(paramCursor.getString(this.o));
      ((e)localObject2).l(paramCursor.getString(this.p));
      ((e)localObject2).m(paramCursor.getString(this.q));
      ((e)localObject2).r(paramCursor.getString(this.j));
      boolean bool2 = k.q(((e)localObject2).b(), AccountHelper.AccountType.ACCOUNT_TYPE_CALENDAR.getAccountType(), false, 2, null);
      boolean bool1 = bool2;
      if (bool2) {
        bool1 = bool2 & (true ^ TextUtils.equals(AccountHelper.a.j(this.a, new Account(((e)localObject2).a(), ((e)localObject2).b()), "import_type"), AccountHelper.ImportType.CALDAV.getType()));
      }
      ((e)localObject2).u(bool1);
      Object localObject3;
      if (Q((e)localObject2))
      {
        localObject3 = L((e)localObject2);
        if (localObject3 != null) {
          localObject1 = ((a)localObject3).a();
        } else {
          localObject1 = null;
        }
        if ((localObject1 == null) && (localObject3 != null)) {
          ((a)localObject3).g(new ArrayList());
        }
        if (localObject3 != null) {
          localObject1 = ((a)localObject3).d();
        } else {
          localObject1 = null;
        }
        if ((TextUtils.isEmpty((CharSequence)localObject1)) && (localObject3 != null)) {
          ((a)localObject3).j(((e)localObject2).c());
        }
        if (localObject3 != null)
        {
          localObject1 = ((a)localObject3).a();
          if (localObject1 != null) {
            ((List)localObject1).add(localObject2);
          }
        }
      }
      else
      {
        localObject1 = new a();
        ((a)localObject1).i(((e)localObject2).a());
        ((a)localObject1).h(((e)localObject2).b());
        ((a)localObject1).g(new ArrayList());
        localObject3 = ((a)localObject1).a();
        if (localObject3 != null) {
          ((List)localObject3).add(localObject2);
        }
        ((a)localObject1).j(((e)localObject2).c());
        ((a)localObject1).k(((e)localObject2).g());
        localObject2 = this.g;
        if (localObject2 != null) {
          ((List)localObject2).add(localObject1);
        }
      }
    }
    z.a("Cal:D:AccountManagerAdapter", "sort start");
    paramCursor = this.g;
    r.c(paramCursor);
    t.z(paramCursor, new a(this));
    z.a("Cal:D:AccountManagerAdapter", "sort end");
  }
  
  private static final int O(AccountManagerAdapter paramAccountManagerAdapter, a parama1, a parama2)
  {
    r.f(paramAccountManagerAdapter, "this$0");
    Object localObject;
    boolean bool;
    if (!r.a(parama1.b(), parama2.b()))
    {
      String str = parama1.b();
      localObject = AccountHelper.AccountType.ACCOUNT_TYPE_LOCAL;
      if (r.a(str, ((AccountHelper.AccountType)localObject).getAccountType()))
      {
        if (r.a(parama1.c(), "account_name_local")) {
          return -1;
        }
        return 1;
      }
      AccountHelper.AccountType localAccountType1 = AccountHelper.AccountType.ACCOUNT_TYPE_XIAOMI;
      if (r.a(str, localAccountType1.getAccountType()))
      {
        if ((r.a(parama2.b(), ((AccountHelper.AccountType)localObject).getAccountType())) && (r.a(parama2.c(), "account_name_local"))) {
          return 1;
        }
        return -1;
      }
      AccountHelper.AccountType localAccountType2 = AccountHelper.AccountType.ACCOUNT_TYPE_CALENDAR;
      if (r.a(str, localAccountType2.getAccountType()))
      {
        parama1 = parama2.b();
        if (r.a(parama1, ((AccountHelper.AccountType)localObject).getAccountType())) {
          bool = true;
        } else {
          bool = r.a(parama1, localAccountType1.getAccountType());
        }
        if (bool)
        {
          r.e(parama2, "groupItem2");
          if (paramAccountManagerAdapter.S(parama2)) {
            return -1;
          }
          return 1;
        }
        return -1;
      }
      AccountHelper.AccountType localAccountType3 = AccountHelper.AccountType.ACCOUNT_TYPE_EMAIL;
      if (r.a(str, localAccountType3.getAccountType()))
      {
        parama1 = parama2.b();
        if (r.a(parama1, ((AccountHelper.AccountType)localObject).getAccountType())) {
          bool = true;
        } else {
          bool = r.a(parama1, localAccountType1.getAccountType());
        }
        if (bool) {
          bool = true;
        } else {
          bool = r.a(parama1, localAccountType2.getAccountType());
        }
        if (bool)
        {
          r.e(parama2, "groupItem2");
          if (paramAccountManagerAdapter.S(parama2)) {
            return -1;
          }
          return 1;
        }
        return -1;
      }
      str = parama2.b();
      if (r.a(str, ((AccountHelper.AccountType)localObject).getAccountType())) {
        bool = true;
      } else {
        bool = r.a(str, localAccountType1.getAccountType());
      }
      if (bool) {
        bool = true;
      } else {
        bool = r.a(str, localAccountType2.getAccountType());
      }
      if (bool) {
        bool = true;
      } else {
        bool = r.a(str, localAccountType3.getAccountType());
      }
      if (bool)
      {
        r.e(parama2, "groupItem2");
        if (paramAccountManagerAdapter.S(parama2))
        {
          paramAccountManagerAdapter = parama1.c();
          r.c(paramAccountManagerAdapter);
          parama1 = parama2.c();
          r.c(parama1);
          return paramAccountManagerAdapter.compareTo(parama1);
        }
        return 1;
      }
      paramAccountManagerAdapter = parama1.c();
      r.c(paramAccountManagerAdapter);
      parama1 = parama2.c();
      r.c(parama1);
      return paramAccountManagerAdapter.compareTo(parama1);
    }
    if (r.a(parama1.b(), AccountHelper.AccountType.ACCOUNT_TYPE_CALENDAR.getAccountType()))
    {
      localObject = parama1.c();
      paramAccountManagerAdapter = AccountHelper.a;
      if (r.a(localObject, paramAccountManagerAdapter.f().name)) {
        return -1;
      }
      if (r.a(localObject, paramAccountManagerAdapter.g().name))
      {
        if (r.a(parama2.c(), paramAccountManagerAdapter.f().name)) {
          return 1;
        }
        return -1;
      }
      localObject = parama2.c();
      if (r.a(localObject, paramAccountManagerAdapter.f().name)) {
        bool = true;
      } else {
        bool = r.a(localObject, paramAccountManagerAdapter.g().name);
      }
      if (bool) {
        return 1;
      }
      paramAccountManagerAdapter = parama1.c();
      r.c(paramAccountManagerAdapter);
      parama1 = parama2.c();
      r.c(parama1);
      return paramAccountManagerAdapter.compareTo(parama1);
    }
    if (r.a(parama1.b(), AccountHelper.AccountType.ACCOUNT_TYPE_LOCAL.getAccountType()))
    {
      r.e(parama1, "groupItem1");
      if (!paramAccountManagerAdapter.S(parama1)) {
        return -1;
      }
      paramAccountManagerAdapter = parama1.c();
      r.c(paramAccountManagerAdapter);
      parama1 = parama2.c();
      r.c(parama1);
      return paramAccountManagerAdapter.compareTo(parama1);
    }
    paramAccountManagerAdapter = parama1.c();
    r.c(paramAccountManagerAdapter);
    parama1 = parama2.c();
    r.c(parama1);
    return paramAccountManagerAdapter.compareTo(parama1);
  }
  
  private final boolean Q(e parame)
  {
    Object localObject = this.g;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (localObject != null) {
      if (((Collection)localObject).isEmpty())
      {
        bool2 = bool1;
      }
      else
      {
        localObject = ((Iterable)localObject).iterator();
        int i1;
        do
        {
          bool2 = bool1;
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          a locala = (a)((Iterator)localObject).next();
          if ((k.q(parame.a(), locala.c(), false, 2, null)) && (k.q(parame.b(), locala.b(), false, 2, null))) {
            i1 = 1;
          } else {
            i1 = 0;
          }
        } while (i1 == 0);
        bool2 = true;
      }
    }
    return bool2;
  }
  
  private final boolean S(a parama)
  {
    boolean bool;
    if ((r.a(parama.b(), AccountHelper.AccountType.ACCOUNT_TYPE_LOCAL.getAccountType())) && (!r.a(parama.c(), "account_name_local"))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private final void T()
  {
    try
    {
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      localIntent.setAction("android.settings.ACCOUNT_LIST");
      this.a.startActivity(localIntent);
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      z.c("Cal:D:AccountManagerAdapter", "jumpAccountList ActivityNotFoundException");
    }
  }
  
  private final void U()
  {
    Intent localIntent = new Intent();
    localIntent.setPackage("com.xiaomi.account");
    localIntent.putExtra("account_type", "com.xiaomi");
    localIntent.setAction("android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS");
    this.a.startActivity(localIntent);
  }
  
  private final void V()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("miui.intent.action.APP_SETTINGS");
    localIntent.setComponent(new ComponentName("com.miui.cloudservice", "com.miui.cloudservice.ui.MiCloudMainActivity"));
    this.a.startActivity(localIntent);
  }
  
  private final void W(a parama)
  {
    try
    {
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      if (parama != null) {
        parama = parama.c();
      } else {
        parama = null;
      }
      localIntent.putExtra("skip_email", parama);
      localIntent.putExtra("delete_email_account", this.E);
      parama = new android/content/ComponentName;
      parama.<init>("com.android.email", "com.kingsoft.email.activity.setup.AccountSettings");
      localIntent.setComponent(parama);
      this.a.startActivity(localIntent);
    }
    catch (Exception parama)
    {
      parama = this.a;
      Toast.makeText(parama, parama.getString(2131887710), 0).show();
    }
  }
  
  private static final void Y(AccountManagerAdapter paramAccountManagerAdapter, final a parama, final b paramb, View paramView)
  {
    r.f(paramAccountManagerAdapter, "this$0");
    r.f(parama, "$groupItem");
    r.f(paramb, "$holder");
    g0.d("key_click_account_more");
    paramView = new ArrayList();
    c.b localb = new c.b(0);
    localb.e(paramAccountManagerAdapter.a.getResources().getString(2131886136));
    localb.d(new l(paramAccountManagerAdapter, parama));
    String str = parama.c();
    Object localObject = AccountHelper.a;
    if (!k.q(str, ((AccountHelper)localObject).f().name, false, 2, null)) {
      paramView.add(localb);
    }
    if (((k.q(parama.b(), AccountHelper.AccountType.ACCOUNT_TYPE_CALENDAR.getAccountType(), false, 2, null)) && (!k.q(parama.c(), ((AccountHelper)localObject).f().name, false, 2, null))) || (k.q(parama.b(), AccountHelper.AccountType.ACCOUNT_TYPE_EMAIL.getAccountType(), false, 2, null)))
    {
      localObject = new c.b(0);
      ((c.b)localObject).e(paramAccountManagerAdapter.a.getResources().getString(2131886135));
      ((c.b)localObject).d(new m(paramAccountManagerAdapter, parama, paramb));
      paramView.add(localObject);
    }
    localObject = new c.b(1);
    ((c.b)localObject).e(paramAccountManagerAdapter.a.getResources().getString(2131886125));
    ((c.b)localObject).d(new n(paramAccountManagerAdapter, parama));
    paramView.add(localObject);
    parama = new com.miui.calendar.view.c(paramAccountManagerAdapter.a, paramView);
    new w(paramAccountManagerAdapter.a, parama).m(paramb.d(), paramb.d());
  }
  
  private final void c0(a parama, Spinner paramSpinner)
  {
    if (parama == null) {
      return;
    }
    if (r.a(parama.b(), AccountHelper.AccountType.ACCOUNT_TYPE_EMAIL.getAccountType()))
    {
      this.E = false;
      W(parama);
    }
    else if (paramSpinner != null)
    {
      paramSpinner.performClick();
    }
  }
  
  private final void d0(a parama)
  {
    SimpleDialogSchema localSimpleDialogSchema = new SimpleDialogSchema();
    localSimpleDialogSchema.title = this.a.getString(2131886533);
    localSimpleDialogSchema.message = this.a.getString(2131886127);
    localSimpleDialogSchema.positiveButtonText = this.a.getString(17039370);
    localSimpleDialogSchema.positiveButtonClickListener = new d(this, parama);
    localSimpleDialogSchema.negativeButtonText = this.a.getString(17039360);
    localSimpleDialogSchema.show(this.a);
  }
  
  private static final void e0(AccountManagerAdapter paramAccountManagerAdapter, a parama, DialogInterface paramDialogInterface, int paramInt)
  {
    r.f(paramAccountManagerAdapter, "this$0");
    r.f(parama, "$account");
    paramAccountManagerAdapter.H(parama);
    paramAccountManagerAdapter = paramAccountManagerAdapter.c;
    if (paramAccountManagerAdapter != null) {
      paramAccountManagerAdapter.b(parama);
    }
  }
  
  private final void f0()
  {
    Toast.makeText(this.a, this.f.getString(2131886137), 0).show();
  }
  
  private final void g0(a parama)
  {
    if (parama == null) {
      return;
    }
    String str = parama.b();
    if (r.a(str, AccountHelper.AccountType.ACCOUNT_TYPE_CALENDAR.getAccountType())) {
      D(parama);
    } else if (r.a(str, AccountHelper.AccountType.ACCOUNT_TYPE_XIAOMI.getAccountType())) {
      V();
    } else if (r.a(str, AccountHelper.AccountType.ACCOUNT_TYPE_LOCAL.getAccountType()))
    {
      if (k.q(parama.c(), "account_name_local", false, 2, null)) {
        V();
      } else {
        T();
      }
    }
    else {
      T();
    }
  }
  
  private final void h0()
  {
    if (this.I != null)
    {
      CalDavService.b localb = this.I;
      if (localb != null) {
        localb.b(this);
      }
      this.a.unbindService(this.J);
      this.I = null;
    }
  }
  
  public final void C(Cursor paramCursor)
  {
    N(paramCursor);
    notifyDataSetChanged();
    paramCursor = this.g;
    int i1;
    if (paramCursor != null) {
      i1 = paramCursor.size();
    } else {
      i1 = 0;
    }
    paramCursor = this.g;
    if (paramCursor != null)
    {
      paramCursor = paramCursor.iterator();
      int i2 = 0;
      for (;;)
      {
        i3 = i2;
        if (!paramCursor.hasNext()) {
          break;
        }
        List localList = ((a)paramCursor.next()).a();
        if (localList != null) {
          i3 = localList.size();
        } else {
          i3 = 0;
        }
        i2 += i3;
      }
    }
    int i3 = 0;
    g0.f("key_account_count", new String[] { "count", String.valueOf(i1) });
    g0.f("key_calendar_count", new String[] { "count", String.valueOf(i3) });
  }
  
  public final void F()
  {
    this.D = false;
    Object localObject1 = this.g;
    r.c(localObject1);
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = ((a)((Iterator)localObject1).next()).a();
      r.c(localObject2);
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((e)((Iterator)localObject2).next()).q(false);
      }
    }
    notifyDataSetChanged();
  }
  
  public final void I()
  {
    h0();
  }
  
  public final List<e> J()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = this.g;
    r.c(localObject1);
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      a locala = (a)((Iterator)localObject1).next();
      boolean bool = false;
      locala.l(false);
      Object localObject2 = locala.a();
      r.c(localObject2);
      Iterator localIterator = ((List)localObject2).iterator();
      for (int i1 = 0; localIterator.hasNext(); i1++)
      {
        label74:
        localObject2 = (e)localIterator.next();
        if ((!((e)localObject2).j()) || (!((e)localObject2).i())) {
          break label74;
        }
        localArrayList.add(localObject2);
      }
      localObject2 = locala.a();
      r.c(localObject2);
      if (i1 == ((List)localObject2).size()) {
        bool = true;
      }
      locala.l(bool);
    }
    return localArrayList;
  }
  
  public final boolean M()
  {
    Object localObject1 = this.g;
    r.c(localObject1);
    Object localObject2;
    do
    {
      localObject1 = ((Iterable)localObject1).iterator();
      while (!((Iterator)localObject2).hasNext())
      {
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject2 = ((a)((Iterator)localObject1).next()).a();
        r.c(localObject2);
        localObject2 = ((Iterable)localObject2).iterator();
      }
    } while (!((e)((Iterator)localObject2).next()).j());
    return true;
    return false;
  }
  
  public final boolean P()
  {
    Object localObject1 = this.g;
    r.c(localObject1);
    e locale;
    do
    {
      localObject1 = ((List)localObject1).iterator();
      Object localObject2;
      while (!((Iterator)localObject2).hasNext())
      {
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject2 = ((a)((Iterator)localObject1).next()).a();
        r.c(localObject2);
        localObject2 = ((List)localObject2).iterator();
      }
      locale = (e)((Iterator)localObject2).next();
    } while ((!locale.j()) || (locale.i()));
    return false;
    return true;
  }
  
  public final boolean R()
  {
    return this.D;
  }
  
  public void X(b paramb, final int paramInt)
  {
    r.f(paramb, "holder");
    Object localObject1 = this.g;
    r.c(localObject1);
    final a locala = (a)((List)localObject1).get(paramInt);
    Object localObject2 = paramb.b();
    localObject1 = locala.c();
    AccountHelper localAccountHelper = AccountHelper.a;
    if (r.a(localObject1, localAccountHelper.g().name)) {
      localObject1 = this.f.getString(2131886260);
    } else if (r.a(localObject1, localAccountHelper.f().name)) {
      localObject1 = this.a.getString(2131886124);
    } else if (r.a(localObject1, "account_name_local")) {
      localObject1 = this.f.getString(2131886842);
    } else {
      localObject1 = locala.c();
    }
    ((TextView)localObject2).setText((CharSequence)localObject1);
    paramb.c().setAdapter(new c(locala.a()));
    localObject1 = K(locala.d());
    boolean bool = TextUtils.isEmpty((CharSequence)localObject1);
    int i1 = 0;
    if ((!bool) && (!r.a(locala.c(), localAccountHelper.f().name)))
    {
      paramb.f().setVisibility(0);
      paramb.f().setText((CharSequence)localObject1);
    }
    else
    {
      paramb.f().setVisibility(8);
    }
    localObject1 = this.a.getResources().getIntArray(2130903047);
    r.e(localObject1, "context.resources.getInt…unt_sync_frequency_value)");
    localObject2 = new ArrayAdapter(this.a, 2131558738, 16908308, this.F);
    ((ArrayAdapter)localObject2).setDropDownViewResource(2131558736);
    paramb.e().setAdapter((SpinnerAdapter)localObject2);
    paramInt = (int)(localAccountHelper.h(this.a, new Account(locala.c(), locala.b())) / 60);
    paramb.e().setSelection(kotlin.collections.j.E((int[])localObject1, paramInt));
    paramb.e().setOnItemSelectedListener(new k((int[])localObject1, paramInt, this, locala));
    if (((r.a(locala.b(), AccountHelper.AccountType.ACCOUNT_TYPE_LOCAL.getAccountType())) && (r.a(locala.c(), "account_name_local"))) || (this.D)) {
      paramb.d().setVisibility(8);
    } else {
      paramb.d().setVisibility(0);
    }
    paramb.d().setOnClickListener(new b(this, locala, paramb));
    localObject1 = locala.b();
    r.c(localObject1);
    if (r.a(localObject1, AccountHelper.AccountType.ACCOUNT_TYPE_CALENDAR.getAccountType()))
    {
      Activity localActivity = this.a;
      localObject2 = locala.c();
      r.c(localObject2);
      localObject1 = locala.b();
      r.c(localObject1);
      localObject1 = localAccountHelper.j(localActivity, new Account((String)localObject2, (String)localObject1), "import_type");
      if (r.a(localObject1, AccountHelper.ImportType.CALDAV.getType())) {
        paramb.a().setImageResource(2131231311);
      } else if (r.a(localObject1, AccountHelper.ImportType.SUBSCRIPTION.getType())) {
        paramb.a().setImageResource(2131231389);
      } else {
        paramb.a().setImageResource(2131231385);
      }
      localObject1 = locala.e();
      if (localObject1 != null) {
        localObject1 = Boolean.valueOf(k.H((CharSequence)localObject1, "feishu", false, 2, null));
      } else {
        localObject1 = null;
      }
      r.c(localObject1);
      if (!((Boolean)localObject1).booleanValue())
      {
        localObject1 = locala.e();
        if (localObject1 != null) {
          localObject1 = Boolean.valueOf(k.H((CharSequence)localObject1, "f.mioffice.cn", false, 2, null));
        } else {
          localObject1 = null;
        }
        r.c(localObject1);
        if (!((Boolean)localObject1).booleanValue()) {}
      }
      else
      {
        paramb.a().setImageResource(2131231302);
      }
      localObject1 = locala.e();
      paramInt = i1;
      if (localObject1 != null)
      {
        paramInt = i1;
        if (k.H((CharSequence)localObject1, "dingtalk", false, 2, null) == true) {
          paramInt = 1;
        }
      }
      if (paramInt != 0) {
        paramb.a().setImageResource(2131231275);
      }
    }
    else
    {
      localObject1 = locala.b();
      r.c(localObject1);
      if (r.a(localObject1, AccountHelper.AccountType.ACCOUNT_TYPE_EMAIL.getAccountType())) {
        paramb.a().setImageResource(2131231312);
      } else {
        paramb.a().setImageResource(2131231385);
      }
    }
  }
  
  public b Z(ViewGroup paramViewGroup, int paramInt)
  {
    r.f(paramViewGroup, "parent");
    paramViewGroup = this.e.inflate(2131558429, paramViewGroup, false);
    r.e(paramViewGroup, "mInflater.inflate(\n     …      false\n            )");
    return new b(paramViewGroup);
  }
  
  public final void a0()
  {
    boolean bool = P();
    Object localObject1 = this.g;
    r.c(localObject1);
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = ((a)((Iterator)localObject1).next()).a();
      r.c(localObject2);
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        e locale = (e)((Iterator)localObject2).next();
        if (locale.j()) {
          locale.q(bool ^ true);
        }
      }
    }
    notifyDataSetChanged();
  }
  
  public final int b0()
  {
    Object localObject1 = this.g;
    r.c(localObject1);
    localObject1 = ((List)localObject1).iterator();
    int i1 = 0;
    if (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = ((a)((Iterator)localObject1).next()).a();
      r.c(localObject2);
      localObject2 = ((List)localObject2).iterator();
      for (int i2 = i1;; i2++)
      {
        e locale;
        do
        {
          i1 = i2;
          if (!((Iterator)localObject2).hasNext()) {
            break;
          }
          locale = (e)((Iterator)localObject2).next();
        } while ((!locale.j()) || (!locale.i()));
      }
    }
    return i1;
  }
  
  public int getItemCount()
  {
    List localList = this.g;
    if (localList == null) {
      return 0;
    }
    r.c(localList);
    return localList.size();
  }
  
  public void n(final long paramLong, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onDavRefreshStatusChanged id:");
    localStringBuilder.append(paramLong);
    localStringBuilder.append(", refreshing:");
    localStringBuilder.append(paramBoolean);
    z.g("Cal:D:AccountManagerAdapter", localStringBuilder.toString());
    if (!paramBoolean) {
      h.d(l0.a(w0.c()), null, null, new SuspendLambda(paramLong, null)
      {
        int label;
        
        private static final void invokeSuspend$lambda-0(AccountManagerAdapter paramAnonymousAccountManagerAdapter)
        {
          Toast.makeText(AccountManagerAdapter.k(paramAnonymousAccountManagerAdapter), AccountManagerAdapter.k(paramAnonymousAccountManagerAdapter).getString(2131887711), 0).show();
        }
        
        public final kotlin.coroutines.c<u> create(Object paramAnonymousObject, kotlin.coroutines.c<?> paramAnonymousc)
        {
          return new 1(this.this$0, paramLong, paramAnonymousc);
        }
        
        public final Object invoke(k0 paramAnonymousk0, kotlin.coroutines.c<? super u> paramAnonymousc)
        {
          return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
        }
        
        public final Object invokeSuspend(Object paramAnonymousObject)
        {
          Object localObject1 = kotlin.coroutines.intrinsics.a.d();
          int i = this.label;
          if (i != 0)
          {
            if (i == 1) {
              kotlin.j.b(paramAnonymousObject);
            } else {
              throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
          }
          else
          {
            kotlin.j.b(paramAnonymousObject);
            paramAnonymousObject = h.b(l0.a(w0.b()), null, null, new SuspendLambda(this.this$0, paramLong)
            {
              int label;
              
              public final kotlin.coroutines.c<u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
              {
                return new 1(this.this$0, this.$id, paramAnonymous2c);
              }
              
              public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super Service> paramAnonymous2c)
              {
                return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(u.a);
              }
              
              public final Object invokeSuspend(Object paramAnonymous2Object)
              {
                kotlin.coroutines.intrinsics.a.d();
                if (this.label == 0)
                {
                  kotlin.j.b(paramAnonymous2Object);
                  return ((AppDatabase)AppDatabase.Companion.getInstance(AccountManagerAdapter.k(this.this$0))).serviceDao().get(this.$id);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
              }
            }, 3, null);
            this.label = 1;
            Object localObject2 = paramAnonymousObject.E(this);
            paramAnonymousObject = localObject2;
            if (localObject2 == localObject1) {
              return localObject1;
            }
          }
          paramAnonymousObject = (Service)paramAnonymousObject;
          if (paramAnonymousObject == null)
          {
            Toast.makeText(AccountManagerAdapter.k(this.this$0), AccountManagerAdapter.k(this.this$0).getString(2131887710), 0).show();
            return u.a;
          }
          com.android.calendar.syncer.g.a.a(AccountManagerAdapter.k(this.this$0), new Account(paramAnonymousObject.getAccountName(), AccountHelper.AccountType.ACCOUNT_TYPE_CALENDAR.getAccountType()));
          AccountManagerAdapter.B(this.this$0);
          AccountManagerAdapter.r(this.this$0).postDelayed(new g(this.this$0), 400L);
          return u.a;
        }
      }, 3, null);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;", "", "", "a", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "i", "(Ljava/lang/String;)V", "groupDisplayName", "b", "h", "groupAccountType", "d", "j", "groupSyncTime", "", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter;", "Ljava/util/List;", "()Ljava/util/List;", "g", "(Ljava/util/List;)V", "childAccountList", "", "e", "Z", "f", "()Z", "l", "(Z)V", "shouldDeleted", "k", "name", "<init>", "(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class a
  {
    private String a;
    private String b;
    private String c;
    private List<AccountManagerAdapter.e> d = new ArrayList();
    private boolean e;
    private String f;
    
    public final List<AccountManagerAdapter.e> a()
    {
      return this.d;
    }
    
    public final String b()
    {
      return this.b;
    }
    
    public final String c()
    {
      return this.a;
    }
    
    public final String d()
    {
      return this.c;
    }
    
    public final String e()
    {
      return this.f;
    }
    
    public final boolean f()
    {
      return this.e;
    }
    
    public final void g(List<AccountManagerAdapter.e> paramList)
    {
      this.d = paramList;
    }
    
    public final void h(String paramString)
    {
      this.b = paramString;
    }
    
    public final void i(String paramString)
    {
      this.a = paramString;
    }
    
    public final void j(String paramString)
    {
      this.c = paramString;
    }
    
    public final void k(String paramString)
    {
      this.f = paramString;
    }
    
    public final void l(boolean paramBoolean)
    {
      this.e = paramBoolean;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Landroid/widget/ImageView;", "a", "Landroid/widget/ImageView;", "()Landroid/widget/ImageView;", "setAccountGroupImg", "(Landroid/widget/ImageView;)V", "accountGroupImg", "Landroid/widget/TextView;", "b", "Landroid/widget/TextView;", "()Landroid/widget/TextView;", "setAccountGroupName", "(Landroid/widget/TextView;)V", "accountGroupName", "c", "f", "setSyncTime", "syncTime", "Lcom/miui/calendar/view/DynamicLinearLayout;", "d", "Lcom/miui/calendar/view/DynamicLinearLayout;", "()Lcom/miui/calendar/view/DynamicLinearLayout;", "setAccountList", "(Lcom/miui/calendar/view/DynamicLinearLayout;)V", "accountList", "Landroid/widget/RelativeLayout;", "e", "Landroid/widget/RelativeLayout;", "()Landroid/widget/RelativeLayout;", "setMoreContainer", "(Landroid/widget/RelativeLayout;)V", "moreContainer", "Lmiuix/appcompat/widget/Spinner;", "Lmiuix/appcompat/widget/Spinner;", "()Lmiuix/appcompat/widget/Spinner;", "setMoreSpinner", "(Lmiuix/appcompat/widget/Spinner;)V", "moreSpinner", "Landroid/view/View;", "itemView", "<init>", "(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class b
    extends RecyclerView.c0
  {
    private ImageView a;
    private TextView b;
    private TextView c;
    private DynamicLinearLayout d;
    private RelativeLayout e;
    private Spinner f;
    
    public b()
    {
      super();
      this$1 = localObject.findViewById(2131361842);
      r.e(AccountManagerAdapter.this, "itemView.findViewById(R.id.account_group_img)");
      this.a = ((ImageView)AccountManagerAdapter.this);
      this$1 = localObject.findViewById(2131361843);
      r.e(AccountManagerAdapter.this, "itemView.findViewById(R.id.account_group_name)");
      this.b = ((TextView)AccountManagerAdapter.this);
      this$1 = localObject.findViewById(2131363282);
      r.e(AccountManagerAdapter.this, "itemView.findViewById(R.id.sync_time_tv)");
      this.c = ((TextView)AccountManagerAdapter.this);
      this$1 = localObject.findViewById(2131361841);
      r.e(AccountManagerAdapter.this, "itemView.findViewById(R.id.account_container)");
      this.d = ((DynamicLinearLayout)AccountManagerAdapter.this);
      this$1 = localObject.findViewById(2131363220);
      r.e(AccountManagerAdapter.this, "itemView.findViewById(R.id.spinner_parent)");
      this.e = ((RelativeLayout)AccountManagerAdapter.this);
      this$1 = localObject.findViewById(2131362825);
      r.e(AccountManagerAdapter.this, "itemView.findViewById(R.id.more_spinner)");
      this.f = ((Spinner)AccountManagerAdapter.this);
    }
    
    public final ImageView a()
    {
      return this.a;
    }
    
    public final TextView b()
    {
      return this.b;
    }
    
    public final DynamicLinearLayout c()
    {
      return this.d;
    }
    
    public final RelativeLayout d()
    {
      return this.e;
    }
    
    public final Spinner e()
    {
      return this.f;
    }
    
    public final TextView f()
    {
      return this.c;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/AccountManagerAdapter$c;", "Lcom/miui/calendar/view/i;", "", "position", "Landroid/view/View;", "convertView", "b", "a", "", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter;", "Ljava/util/List;", "accountList", "<init>", "(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Ljava/util/List;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class c
    extends i
  {
    private List<AccountManagerAdapter.e> b;
    
    public c()
    {
      Object localObject;
      this.b = localObject;
    }
    
    private static final void g(AccountManagerAdapter paramAccountManagerAdapter, AccountManagerAdapter.e parame, View paramView)
    {
      r.f(paramAccountManagerAdapter, "this$0");
      r.f(parame, "$accountItem");
      if (AccountManagerAdapter.w(paramAccountManagerAdapter))
      {
        if (parame.j())
        {
          parame.q(parame.i() ^ true);
          paramView = AccountManagerAdapter.t(paramAccountManagerAdapter);
          if (paramView != null) {
            paramView.i(parame);
          }
          paramAccountManagerAdapter.notifyDataSetChanged();
        }
      }
      else
      {
        paramView = parame.b();
        String str = AccountHelper.AccountType.ACCOUNT_TYPE_XIAOMI.getAccountType();
        boolean bool = false;
        if (k.q(paramView, str, false, 2, null)) {
          bool = k.q(parame.g(), "Xiaomi Calendar", false, 2, null) ^ true;
        }
        paramAccountManagerAdapter = AccountManagerAdapter.k(paramAccountManagerAdapter);
        r.d(paramAccountManagerAdapter, "null cannot be cast to non-null type com.android.calendar.selectcalendars.SelectVisibleCalendarsActivity");
        ((SelectVisibleCalendarsActivity)paramAccountManagerAdapter).b0(parame.f(), parame.d(), parame.h(), bool, parame.g());
        g0.d("key_click_calendar_setting");
      }
    }
    
    private static final boolean h(AccountManagerAdapter paramAccountManagerAdapter, AccountManagerAdapter.e parame, View paramView)
    {
      r.f(paramAccountManagerAdapter, "this$0");
      r.f(parame, "$accountItem");
      boolean bool1 = paramAccountManagerAdapter.M();
      boolean bool2 = true;
      if (bool1)
      {
        AccountManagerAdapter.y(paramAccountManagerAdapter, true);
        parame.q(true);
        paramView = AccountManagerAdapter.t(paramAccountManagerAdapter);
        if (paramView != null) {
          paramView.s(parame);
        }
        paramAccountManagerAdapter.notifyDataSetChanged();
      }
      else
      {
        bool2 = false;
      }
      return bool2;
    }
    
    public int a()
    {
      List localList = this.b;
      r.c(localList);
      return localList.size();
    }
    
    public View b(int paramInt, View paramView)
    {
      ViewGroup.LayoutParams localLayoutParams = null;
      if (paramView == null)
      {
        paramView = AccountManagerAdapter.s(AccountManagerAdapter.this).inflate(2131558430, null);
        localObject1 = new a(paramView);
        paramView.setTag(localObject1);
      }
      else
      {
        localObject1 = paramView.getTag();
        r.d(localObject1, "null cannot be cast to non-null type com.android.calendar.selectcalendars.AccountManagerAdapter.AccountItemAdapter.AccountItemHolder");
        localObject1 = (a)localObject1;
      }
      Object localObject2 = this.b;
      r.c(localObject2);
      localObject2 = (AccountManagerAdapter.e)((List)localObject2).get(paramInt);
      Object localObject3 = ((AccountManagerAdapter.e)localObject2).e();
      paramInt = Utils.x(AccountManagerAdapter.u(AccountManagerAdapter.this), ((AccountManagerAdapter.e)localObject2).a(), ((AccountManagerAdapter.e)localObject2).b(), (String)localObject3, ((AccountManagerAdapter.e)localObject2).d());
      Object localObject4 = Utils.o1(AccountManagerAdapter.u(AccountManagerAdapter.this), (String)localObject3);
      if (r.a(localObject4, ((AccountManagerAdapter.e)localObject2).a()))
      {
        localObject3 = ((a)localObject1).b();
        if (localObject3 != null) {
          ((TextView)localObject3).setText(AccountManagerAdapter.u(AccountManagerAdapter.this).getString(2131886138));
        }
      }
      else
      {
        localObject3 = ((a)localObject1).b();
        if (localObject3 != null) {
          ((TextView)localObject3).setText((CharSequence)localObject4);
        }
      }
      if (AccountManagerAdapter.w(AccountManagerAdapter.this))
      {
        localObject3 = ((a)localObject1).a();
        if (localObject3 != null) {
          ((ImageView)localObject3).setVisibility(8);
        }
        localObject3 = ((a)localObject1).f();
        if (localObject3 != null) {
          ((View)localObject3).setVisibility(0);
        }
        if (((AccountManagerAdapter.e)localObject2).j())
        {
          if (((AccountManagerAdapter.e)localObject2).i())
          {
            localObject3 = ((a)localObject1).d();
            if (localObject3 != null) {
              ((View)localObject3).setBackgroundColor(AccountManagerAdapter.q(AccountManagerAdapter.this));
            }
          }
          else
          {
            localObject3 = ((a)localObject1).d();
            if (localObject3 != null) {
              ((View)localObject3).setBackgroundColor(AccountManagerAdapter.p(AccountManagerAdapter.this));
            }
          }
          localObject3 = ((a)localObject1).b();
          if (localObject3 != null) {
            ((TextView)localObject3).setTextColor(AccountManagerAdapter.o(AccountManagerAdapter.this));
          }
          localObject3 = ((a)localObject1).f();
          if (localObject3 != null) {
            ((View)localObject3).setEnabled(true);
          }
        }
        else
        {
          localObject3 = ((a)localObject1).b();
          if (localObject3 != null) {
            ((TextView)localObject3).setTextColor(AccountManagerAdapter.m(AccountManagerAdapter.this));
          }
          localObject3 = ((a)localObject1).f();
          if (localObject3 != null) {
            ((View)localObject3).setEnabled(false);
          }
        }
      }
      else
      {
        localObject3 = ((a)localObject1).b();
        if (localObject3 != null) {
          ((TextView)localObject3).setTextColor(AccountManagerAdapter.o(AccountManagerAdapter.this));
        }
        localObject3 = ((a)localObject1).a();
        if (localObject3 != null) {
          ((ImageView)localObject3).setVisibility(0);
        }
        localObject3 = ((a)localObject1).f();
        if (localObject3 != null) {
          ((View)localObject3).setVisibility(8);
        }
      }
      localObject3 = ((a)localObject1).f();
      if (localObject3 != null)
      {
        boolean bool;
        if ((((AccountManagerAdapter.e)localObject2).i()) && (((AccountManagerAdapter.e)localObject2).j())) {
          bool = true;
        } else {
          bool = false;
        }
        ((CompoundButton)localObject3).setChecked(bool);
      }
      localObject4 = x0.m(AccountManagerAdapter.u(AccountManagerAdapter.this), paramInt);
      localObject3 = ((a)localObject1).c();
      if (localObject3 != null) {
        ((ImageView)localObject3).setImageBitmap((Bitmap)localObject4);
      }
      localObject3 = ((a)localObject1).b();
      if (localObject3 != null) {
        localLayoutParams = ((View)localObject3).getLayoutParams();
      }
      localObject3 = ((a)localObject1).g();
      if (localObject3 != null) {
        ((View)localObject3).setVisibility(8);
      }
      if (localLayoutParams != null) {
        localLayoutParams.height = -1;
      }
      if ((!((AccountManagerAdapter.e)localObject2).h()) && (!AccountManagerAdapter.w(AccountManagerAdapter.this)))
      {
        localObject3 = ((a)localObject1).e();
        if (localObject3 != null) {
          ((View)localObject3).setVisibility(0);
        }
      }
      else
      {
        localObject3 = ((a)localObject1).e();
        if (localObject3 != null) {
          ((View)localObject3).setVisibility(8);
        }
      }
      localObject3 = ((a)localObject1).d();
      if (localObject3 != null) {
        ((View)localObject3).setOnClickListener(new e(AccountManagerAdapter.this, (AccountManagerAdapter.e)localObject2));
      }
      localObject3 = ((a)localObject1).d();
      if (localObject3 != null) {
        ((View)localObject3).setOnLongClickListener(new f(AccountManagerAdapter.this, (AccountManagerAdapter.e)localObject2));
      }
      miuix.animation.a.y(new View[] { ((a)localObject1).d() }).d().O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.DOWN }).O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.UP }).P(((a)localObject1).d(), new d9.a[0]);
      Object localObject1 = ((a)localObject1).b();
      if (localObject1 != null) {
        ((View)localObject1).setLayoutParams(localLayoutParams);
      }
      paramView.invalidate();
      r.c(paramView);
      return paramView;
    }
    
    @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/AccountManagerAdapter$c$a;", "", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "b", "()Landroid/widget/TextView;", "setCalendarName", "(Landroid/widget/TextView;)V", "calendarName", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "c", "()Landroid/widget/ImageView;", "setColorView", "(Landroid/widget/ImageView;)V", "colorView", "g", "setSecondaryText", "secondaryText", "Landroid/widget/LinearLayout;", "d", "Landroid/widget/LinearLayout;", "()Landroid/widget/LinearLayout;", "setContainer", "(Landroid/widget/LinearLayout;)V", "container", "e", "setDisplayTv", "displayTv", "f", "setArrowRight", "arrowRight", "Landroid/widget/CheckBox;", "Landroid/widget/CheckBox;", "()Landroid/widget/CheckBox;", "setMultipleSelectCb", "(Landroid/widget/CheckBox;)V", "multipleSelectCb", "Landroid/view/View;", "view", "<init>", "(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$c;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
    public final class a
    {
      private TextView a;
      private ImageView b;
      private TextView c;
      private LinearLayout d;
      private TextView e;
      private ImageView f;
      private CheckBox g;
      
      public a()
      {
        Object localObject2 = null;
        Object localObject1;
        if (localObject1 != null) {
          this$1 = (TextView)localObject1.findViewById(2131362093);
        } else {
          this$1 = null;
        }
        this.a = AccountManagerAdapter.c.this;
        if (localObject1 != null) {
          this$1 = (ImageView)localObject1.findViewById(2131362189);
        } else {
          this$1 = null;
        }
        this.b = AccountManagerAdapter.c.this;
        if (localObject1 != null) {
          this$1 = (TextView)localObject1.findViewById(2131363258);
        } else {
          this$1 = null;
        }
        this.c = AccountManagerAdapter.c.this;
        if (localObject1 != null) {
          this$1 = (LinearLayout)localObject1.findViewById(2131361844);
        } else {
          this$1 = null;
        }
        this.d = AccountManagerAdapter.c.this;
        if (localObject1 != null) {
          this$1 = (TextView)localObject1.findViewById(2131362632);
        } else {
          this$1 = null;
        }
        this.e = AccountManagerAdapter.c.this;
        if (localObject1 != null) {
          this$1 = (ImageView)localObject1.findViewById(2131361992);
        } else {
          this$1 = null;
        }
        this.f = AccountManagerAdapter.c.this;
        this$1 = localObject2;
        if (localObject1 != null) {
          this$1 = (CheckBox)localObject1.findViewById(2131362603);
        }
        this.g = AccountManagerAdapter.c.this;
      }
      
      public final ImageView a()
      {
        return this.f;
      }
      
      public final TextView b()
      {
        return this.a;
      }
      
      public final ImageView c()
      {
        return this.b;
      }
      
      public final LinearLayout d()
      {
        return this.d;
      }
      
      public final TextView e()
      {
        return this.e;
      }
      
      public final CheckBox f()
      {
        return this.g;
      }
      
      public final TextView g()
      {
        return this.c;
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;", "", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter;", "accountItem", "Lkotlin/u;", "s", "i", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static abstract interface d
  {
    public abstract void i(AccountManagerAdapter.e parame);
    
    public abstract void s(AccountManagerAdapter.e parame);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;", "", "", "a", "J", "f", "()J", "p", "(J)V", "id", "", "b", "Ljava/lang/String;", "e", "()Ljava/lang/String;", "o", "(Ljava/lang/String;)V", "displayName", "c", "getOwnerAccount", "s", "ownerAccount", "", "d", "I", "()I", "n", "(I)V", "color", "", "Z", "h", "()Z", "t", "(Z)V", "selected", "k", "accountName", "g", "l", "accountType", "m", "calendarSync5", "i", "r", "name", "j", "q", "isMultipleSelected", "u", "isSupportDelete", "<init>", "(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class e
  {
    private long a;
    private String b;
    private String c;
    private int d;
    private boolean e;
    private String f;
    private String g;
    private String h;
    private String i;
    private boolean j;
    private boolean k;
    
    public final String a()
    {
      return this.f;
    }
    
    public final String b()
    {
      return this.g;
    }
    
    public final String c()
    {
      return this.h;
    }
    
    public final int d()
    {
      return this.d;
    }
    
    public final String e()
    {
      return this.b;
    }
    
    public final long f()
    {
      return this.a;
    }
    
    public final String g()
    {
      return this.i;
    }
    
    public final boolean h()
    {
      return this.e;
    }
    
    public final boolean i()
    {
      return this.j;
    }
    
    public final boolean j()
    {
      return this.k;
    }
    
    public final void k(String paramString)
    {
      this.f = paramString;
    }
    
    public final void l(String paramString)
    {
      this.g = paramString;
    }
    
    public final void m(String paramString)
    {
      this.h = paramString;
    }
    
    public final void n(int paramInt)
    {
      this.d = paramInt;
    }
    
    public final void o(String paramString)
    {
      this.b = paramString;
    }
    
    public final void p(long paramLong)
    {
      this.a = paramLong;
    }
    
    public final void q(boolean paramBoolean)
    {
      this.j = paramBoolean;
    }
    
    public final void r(String paramString)
    {
      this.i = paramString;
    }
    
    public final void s(String paramString)
    {
      this.c = paramString;
    }
    
    public final void t(boolean paramBoolean)
    {
      this.e = paramBoolean;
    }
    
    public final void u(boolean paramBoolean)
    {
      this.k = paramBoolean;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/AccountManagerAdapter$f;", "", "", "ACCOUNT_NAME_LOCAL", "Ljava/lang/String;", "ACCOUNT_NAME_XIAOMI", "TAG", "", "mScale", "F", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class f {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;", "", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter;", "account", "Lkotlin/u;", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static abstract interface g
  {
    public abstract void b(AccountManagerAdapter.a parama);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;", "", "Lkotlin/u;", "onDismiss", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static abstract interface h
  {
    public abstract void onDismiss();
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/selectcalendars/AccountManagerAdapter$j", "Landroid/content/ServiceConnection;", "Landroid/content/ComponentName;", "name", "Lkotlin/u;", "onServiceDisconnected", "Landroid/os/IBinder;", "service", "onServiceConnected", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class j
    implements ServiceConnection
  {
    j(AccountManagerAdapter paramAccountManagerAdapter) {}
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      r.d(paramIBinder, "null cannot be cast to non-null type com.android.calendar.syncer.CalDavService.InfoBinder");
      paramComponentName = (CalDavService.b)paramIBinder;
      AccountManagerAdapter.x(this.a, paramComponentName);
      paramComponentName = AccountManagerAdapter.l(this.a);
      if (paramComponentName != null) {
        paramComponentName.a(this.a, true);
      }
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      AccountManagerAdapter.x(this.a, null);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/selectcalendars/AccountManagerAdapter$k", "Landroid/widget/AdapterView$OnItemSelectedListener;", "Landroid/widget/AdapterView;", "parent", "Lkotlin/u;", "onNothingSelected", "Landroid/view/View;", "view", "", "position", "", "id", "onItemSelected", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class k
    implements AdapterView.OnItemSelectedListener
  {
    k(int[] paramArrayOfInt, int paramInt, AccountManagerAdapter paramAccountManagerAdapter, AccountManagerAdapter.a parama) {}
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      paramInt = this.a[paramInt];
      if (paramInt != paramInt)
      {
        b2.a.i(AccountManagerAdapter.k(jdField_this), locala.c(), paramInt);
        AccountHelper.a.l(AccountManagerAdapter.k(jdField_this), new Account(locala.c(), locala.b()), paramInt * 60);
        g0.f("key_set_sync_frequency", new String[] { "sync_frequency", String.valueOf(paramInt) });
      }
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/selectcalendars/AccountManagerAdapter$l", "Lcom/miui/calendar/view/c$b$a;", "Lkotlin/u;", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class l
    implements c.b.a
  {
    l(AccountManagerAdapter paramAccountManagerAdapter, AccountManagerAdapter.a parama) {}
    
    public void a()
    {
      g0.d("key_sync_now");
      AccountManagerAdapter.A(this.a, parama);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/selectcalendars/AccountManagerAdapter$m", "Lcom/miui/calendar/view/c$b$a;", "Lkotlin/u;", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class m
    implements c.b.a
  {
    m(AccountManagerAdapter paramAccountManagerAdapter, AccountManagerAdapter.a parama, AccountManagerAdapter.b paramb) {}
    
    public void a()
    {
      AccountManagerAdapter.z(this.a, parama, paramb.e());
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/selectcalendars/AccountManagerAdapter$n", "Lcom/miui/calendar/view/c$b$a;", "Lkotlin/u;", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class n
    implements c.b.a
  {
    n(AccountManagerAdapter paramAccountManagerAdapter, AccountManagerAdapter.a parama) {}
    
    public void a()
    {
      g0.d("key_delete_account");
      AccountManagerAdapter.j(this.a, parama);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.selectcalendars.AccountManagerAdapter
 * JD-Core Version:    0.7.0.1
 */