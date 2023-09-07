package com.android.calendar.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.d;
import com.miui.calendar.util.StatusBar;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import java.io.File;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.animation.f;
import miuix.appcompat.app.m;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/ShareActivity;", "Lcom/android/calendar/common/b;", "Lkotlin/u;", "Y", "Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "", "show", "a0", "onBackPressed", "", "requestCode", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "Lcom/android/calendar/common/ShareView;", "b", "Lcom/android/calendar/common/ShareView;", "mShareView", "Ljava/lang/reflect/Field;", "c", "Ljava/lang/reflect/Field;", "mFieldBlurRatio", "Landroid/view/View;", "d", "Landroid/view/View;", "backgroundView", "e", "Ljava/lang/Boolean;", "mActionBarDarkMode", "f", "Ljava/lang/String;", "mPicContent", "g", "mRealBackgroundView", "h", "mFrom", "", "", "i", "Ljava/util/Map;", "mStatParams", "j", "mIsFinish", "<init>", "()V", "l", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public class ShareActivity
  extends b
{
  public static final a l = new a(null);
  private ShareView b;
  private Field c;
  private View d;
  private Boolean e = Boolean.FALSE;
  private String f = "";
  private View g;
  private String h = "";
  private Map<String, Object> i;
  private boolean j;
  public Map<Integer, View> k;
  
  private final void Y()
  {
    Object localObject1 = new StatusBar(this);
    Object localObject2 = this.e;
    r.c(localObject2);
    ((StatusBar)localObject1).a(((Boolean)localObject2).booleanValue());
    localObject2 = (ImageView)findViewById(2131362185);
    ((View)localObject2).setContentDescription(getResources().getString(2131886267));
    localObject1 = this.e;
    r.c(localObject1);
    if (((Boolean)localObject1).booleanValue()) {
      ((ImageView)localObject2).setImageResource(2131231299);
    } else {
      ((ImageView)localObject2).setImageResource(2131231292);
    }
    localObject2 = (TextView)findViewById(2131363373);
    ((TextView)localObject2).setText(getResources().getString(2131887471));
    if ((!x0.s0(this)) && (r.a("history_card", this.h))) {
      ((TextView)localObject2).setTextColor(-16777216);
    }
  }
  
  private final void Z()
  {
    ShareView localShareView = (ShareView)findViewById(2131363079);
    this.b = localShareView;
    if (localShareView != null) {
      localShareView.setVisibility(8);
    }
    localShareView = this.b;
    if (localShareView != null) {
      localShareView.setStatParams((HashMap)this.i);
    }
  }
  
  public final void a0(boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean)
    {
      localObject = this.b;
      r.c(localObject);
      ((View)localObject).setVisibility(0);
      localObject = this.b;
      r.c(localObject);
      ((ShareView)localObject).C();
    }
    else
    {
      if (this.j) {
        return;
      }
      this.j = true;
      localObject = this.b;
      r.c(localObject);
      ((ShareView)localObject).D();
      localObject = new d9.a().a(new g9.b[] { new b(this) });
      miuix.animation.a.z(new Object[] { "folme1" }).q("setup1").M(new Object[] { "tag1", Float.valueOf(1.0F), "tag2", Float.valueOf(1.0F) }).I(new Object[] { "tag1", Float.valueOf(0.0F), "tag2", Float.valueOf(0.0F), localObject });
    }
  }
  
  public void onBackPressed()
  {
    a0(false);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    r.f(paramConfiguration, "newConfig");
    super.onConfigurationChanged(paramConfiguration);
    if (r.a("history_card", this.h)) {
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject2;
    try
    {
      paramBundle = getWindow().getAttributes();
      localObject1 = paramBundle.getClass();
      localObject2 = ((Class)localObject1).getDeclaredField("blurMode");
      ((AccessibleObject)localObject2).setAccessible(true);
      ((Field)localObject2).set(paramBundle, Integer.valueOf(4));
      localObject1 = ((Class)localObject1).getDeclaredField("blurRatio");
      this.c = ((Field)localObject1);
      if (localObject1 != null) {
        ((AccessibleObject)localObject1).setAccessible(true);
      }
      localObject1 = this.c;
      if (localObject1 != null) {
        ((Field)localObject1).set(paramBundle, Float.valueOf(0.0F));
      }
      getWindow().setAttributes(paramBundle);
    }
    catch (Exception paramBundle)
    {
      paramBundle.printStackTrace();
    }
    if (this.c != null) {
      getWindow().addFlags(4);
    }
    setContentView(2131558931);
    this.e = Boolean.valueOf(getIntent().getBooleanExtra("key_action_bar_dark_mode", false));
    this.f = getIntent().getStringExtra("key_action_pic_content");
    this.h = getIntent().getStringExtra("key_action_from");
    if (getIntent().hasExtra("key_stat_params"))
    {
      paramBundle = getIntent().getSerializableExtra("key_stat_params");
      r.d(paramBundle, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.Any>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, kotlin.Any> }");
      this.i = ((HashMap)paramBundle);
    }
    Y();
    Z();
    this.g = findViewById(2131363014);
    if (getIntent().hasExtra("key_background_color"))
    {
      paramBundle = getIntent().getStringExtra("key_background_color");
      if (paramBundle != null)
      {
        localObject1 = this.g;
        if (localObject1 != null) {
          ((View)localObject1).setBackgroundColor(Color.parseColor(paramBundle));
        }
      }
    }
    else
    {
      paramBundle = this.g;
      if (paramBundle != null) {
        paramBundle.setBackgroundColor(getResources().getColor(2131099765));
      }
    }
    Object localObject1 = findViewById(2131362010);
    r.e(localObject1, "findViewById(R.id.background_view)");
    this.d = ((View)localObject1);
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("backgroundView");
      paramBundle = null;
    }
    paramBundle.setAlpha(0.0F);
    paramBundle = this.f;
    if (r.a(paramBundle, "calendar_share.png"))
    {
      paramBundle = this.b;
      r.c(paramBundle);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(getFilesDir().getAbsolutePath());
      ((StringBuilder)localObject1).append("/calendar_share.png");
      localObject1 = new File(((StringBuilder)localObject1).toString());
      localObject2 = this.e;
      r.c(localObject2);
      paramBundle.H((File)localObject1, ((Boolean)localObject2).booleanValue());
    }
    else if (r.a(paramBundle, "calendar_history.png"))
    {
      paramBundle = this.b;
      r.c(paramBundle);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(getFilesDir().getAbsolutePath());
      ((StringBuilder)localObject1).append("/calendar_history.png");
      localObject2 = new File(((StringBuilder)localObject1).toString());
      localObject1 = this.e;
      r.c(localObject1);
      paramBundle.H((File)localObject2, ((Boolean)localObject1).booleanValue());
    }
    else
    {
      z.b("Cal:D:ShareActivity", "onCreate() : Wow! mPicContent is null");
    }
    a0(true);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    r.f(paramArrayOfString, "permissions");
    r.f(paramArrayOfInt, "grantResults");
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    if ((paramInt == 1) && (androidx.core.content.a.a(this, z0.e("images")) == 0))
    {
      paramArrayOfString = this.f;
      if (r.a(paramArrayOfString, "calendar_share.png"))
      {
        paramArrayOfString = this.b;
        if (paramArrayOfString != null)
        {
          paramArrayOfInt = new StringBuilder();
          paramArrayOfInt.append(getFilesDir().getAbsolutePath());
          paramArrayOfInt.append("/calendar_share.png");
          paramArrayOfString.E(new File(paramArrayOfInt.toString()));
        }
      }
      else if (r.a(paramArrayOfString, "calendar_history.png"))
      {
        paramArrayOfString = this.b;
        if (paramArrayOfString != null)
        {
          paramArrayOfInt = new StringBuilder();
          paramArrayOfInt.append(getFilesDir().getAbsolutePath());
          paramArrayOfInt.append("/calendar_history.png");
          paramArrayOfString.E(new File(paramArrayOfInt.toString()));
        }
      }
      else
      {
        z.b("Cal:D:ShareActivity", "onRequestPermissionsResult() : Wow! mPicContent is null");
      }
    }
    else if (!shouldShowRequestPermissionRationale(z0.e("images")))
    {
      z0.x(this, getString(2131887326), getString(2131887312));
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/ShareActivity$a;", "", "", "KEY_ACTION_BAR_DARK_MODE", "Ljava/lang/String;", "KEY_ACTION_FROM", "KEY_ACTION_PIC_CONTENT", "KEY_BACKGROUND_COLOR", "KEY_BITMAP_BASE64", "KEY_BITMAP_NAME", "KEY_BITMAP_NAME_HISTORY", "KEY_STAT_PARAMS", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/common/ShareActivity$b", "Lg9/b;", "", "toTag", "Lkotlin/u;", "onComplete", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    extends g9.b
  {
    b(ShareActivity paramShareActivity) {}
    
    public void onComplete(Object paramObject)
    {
      super.onComplete(paramObject);
      this.a.finish();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.ShareActivity
 * JD-Core Version:    0.7.0.1
 */