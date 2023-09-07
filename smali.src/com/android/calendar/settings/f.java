package com.android.calendar.settings;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import androidx.core.content.a;
import androidx.fragment.app.Fragment;
import androidx.preference.Preference;
import androidx.preference.Preference.d;
import androidx.preference.PreferenceGroup;
import androidx.preference.g;
import com.miui.calendar.util.z0.i;
import java.util.ArrayList;
import java.util.List;
import miuix.preference.TextPreference;
import miuix.preference.j;
import o1.i;

public class f
  extends j
  implements Preference.d
{
  TextPreference D;
  TextPreference E;
  TextPreference F;
  TextPreference G;
  TextPreference H;
  TextPreference y;
  TextPreference z;
  
  private static boolean K(Context paramContext, String paramString)
  {
    boolean bool;
    if (paramContext.checkSelfPermission(paramString) == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void L()
  {
    Object localObject = m();
    this.y = ((TextPreference)((PreferenceGroup)localObject).T0("key_access_calendar"));
    this.z = ((TextPreference)((PreferenceGroup)localObject).T0("key_read_contacts"));
    this.D = ((TextPreference)((PreferenceGroup)localObject).T0("key_read_write_storage"));
    this.E = ((TextPreference)((PreferenceGroup)localObject).T0("key_read_phone_state"));
    this.F = ((TextPreference)((PreferenceGroup)localObject).T0("key_read_notice_manager"));
    this.G = ((TextPreference)((PreferenceGroup)localObject).T0("key_read_image_video"));
    this.H = ((TextPreference)((PreferenceGroup)localObject).T0("key_read_audio"));
    this.y.E0(this);
    this.z.E0(this);
    this.D.E0(this);
    this.E.E0(this);
    this.F.E0(this);
    this.G.E0(this);
    this.H.E0(this);
    TextPreference localTextPreference = this.y;
    if (localTextPreference != null)
    {
      if (K(getContext(), "android.permission.READ_CALENDAR")) {
        localObject = getString(2131887246);
      } else {
        localObject = getString(2131887253);
      }
      localTextPreference.U0((String)localObject);
      this.y.E0(this);
    }
    localTextPreference = this.z;
    if (localTextPreference != null)
    {
      if (K(getContext(), "android.permission.READ_CONTACTS")) {
        localObject = getString(2131887246);
      } else {
        localObject = getString(2131887253);
      }
      localTextPreference.U0((String)localObject);
      this.z.E0(this);
    }
    localTextPreference = this.E;
    if (localTextPreference != null)
    {
      if (K(getContext(), "android.permission.READ_PHONE_STATE")) {
        localObject = getString(2131887246);
      } else {
        localObject = getString(2131887253);
      }
      localTextPreference.U0((String)localObject);
      this.E.E0(this);
    }
    if (Build.VERSION.SDK_INT >= 33)
    {
      localTextPreference = this.G;
      if (localTextPreference != null)
      {
        if ((K(getContext(), "android.permission.READ_MEDIA_IMAGES")) && (K(getContext(), "android.permission.READ_MEDIA_VIDEO"))) {
          localObject = getString(2131887246);
        } else {
          localObject = getString(2131887253);
        }
        localTextPreference.U0((String)localObject);
      }
      localTextPreference = this.H;
      if (localTextPreference != null)
      {
        if (K(getContext(), "android.permission.READ_MEDIA_AUDIO")) {
          localObject = getString(2131887246);
        } else {
          localObject = getString(2131887253);
        }
        localTextPreference.U0((String)localObject);
      }
      localTextPreference = this.F;
      if (localTextPreference != null)
      {
        if (K(getContext(), "android.permission.POST_NOTIFICATIONS")) {
          localObject = getString(2131887246);
        } else {
          localObject = getString(2131887253);
        }
        localTextPreference.U0((String)localObject);
      }
      this.D.L0(false);
    }
    else
    {
      localTextPreference = this.D;
      if (localTextPreference != null)
      {
        if (K(getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
          localObject = getString(2131887246);
        } else {
          localObject = getString(2131887253);
        }
        localTextPreference.U0((String)localObject);
      }
      localObject = this.F;
      if (localObject != null) {
        ((Preference)localObject).L0(false);
      }
      localObject = this.G;
      if (localObject != null) {
        ((Preference)localObject).L0(false);
      }
      localObject = this.H;
      if (localObject != null) {
        ((Preference)localObject).L0(false);
      }
    }
  }
  
  private void O()
  {
    Intent localIntent = new Intent("miui.intent.action.APP_PERM_EDITOR");
    localIntent.putExtra("extra_pkgname", "com.android.calendar");
    startActivity(localIntent);
  }
  
  public void M(Context paramContext, j paramj, int paramInt, z0.i parami)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Object localObject = paramContext.getResources();
    switch (paramInt)
    {
    case 104: 
    default: 
      break;
    case 106: 
      localArrayList1.add("android.permission.READ_MEDIA_AUDIO");
      break;
    case 105: 
      localArrayList1.add("android.permission.READ_MEDIA_IMAGES");
      localArrayList1.add("android.permission.READ_MEDIA_VIDEO");
      break;
    case 103: 
      localArrayList1.add("android.permission.READ_PHONE_STATE");
      break;
    case 102: 
      localArrayList1.add("android.permission.WRITE_EXTERNAL_STORAGE");
      break;
    case 101: 
      localArrayList1.add("android.permission.READ_CONTACTS");
      localArrayList2.add(((Resources)localObject).getString(2131887313));
      break;
    case 100: 
      localArrayList1.add("android.permission.READ_CALENDAR");
      localArrayList2.add(((Resources)localObject).getString(2131887305));
    }
    localObject = new ArrayList();
    for (int i = 0; i < localArrayList1.size(); i++) {
      if (a.a(paramContext, (String)localArrayList1.get(i)) != 0)
      {
        ((List)localObject).add((String)localArrayList1.get(i));
        if (!localArrayList2.isEmpty()) {
          ((List)localObject).add((String)localArrayList2.get(i));
        }
      }
    }
    if (((List)localObject).isEmpty())
    {
      if (parami == null) {
        return;
      }
      parami.a();
    }
    else
    {
      paramj.requestPermissions((String[])((List)localObject).toArray(new String[((List)localObject).size()]), paramInt);
    }
  }
  
  public void N()
  {
    TextPreference localTextPreference = this.y;
    String str;
    if (K(getContext(), "android.permission.READ_CALENDAR")) {
      str = getString(2131887246);
    } else {
      str = getString(2131887253);
    }
    localTextPreference.U0(str);
    localTextPreference = this.z;
    if (K(getContext(), "android.permission.READ_CONTACTS")) {
      str = getString(2131887246);
    } else {
      str = getString(2131887253);
    }
    localTextPreference.U0(str);
    if (Build.VERSION.SDK_INT >= 33)
    {
      localTextPreference = this.G;
      if ((K(getContext(), "android.permission.READ_MEDIA_IMAGES")) && (K(getContext(), "android.permission.READ_MEDIA_VIDEO"))) {
        str = getString(2131887246);
      } else {
        str = getString(2131887253);
      }
      localTextPreference.U0(str);
      localTextPreference = this.H;
      if (K(getContext(), "android.permission.READ_MEDIA_AUDIO")) {
        str = getString(2131887246);
      } else {
        str = getString(2131887253);
      }
      localTextPreference.U0(str);
      this.D.L0(false);
    }
    else
    {
      localTextPreference = this.D;
      if (K(getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
        str = getString(2131887246);
      } else {
        str = getString(2131887253);
      }
      localTextPreference.U0(str);
      this.G.L0(false);
      this.H.L0(false);
    }
    localTextPreference = this.E;
    if (K(getContext(), "android.permission.READ_PHONE_STATE")) {
      str = getString(2131887246);
    } else {
      str = getString(2131887253);
    }
    localTextPreference.U0(str);
    localTextPreference = this.F;
    if (K(getContext(), "android.permission.POST_NOTIFICATIONS")) {
      str = getString(2131887246);
    } else {
      str = getString(2131887253);
    }
    localTextPreference.U0(str);
  }
  
  public boolean d(Preference paramPreference)
  {
    paramPreference = paramPreference.u();
    paramPreference.hashCode();
    int i = paramPreference.hashCode();
    int j = 0;
    int k = -1;
    switch (i)
    {
    default: 
      break;
    case 1771181330: 
      if (paramPreference.equals("key_read_write_storage")) {
        k = 6;
      }
      break;
    case 1524213197: 
      if (paramPreference.equals("key_read_audio")) {
        k = 5;
      }
      break;
    case 609390391: 
      if (paramPreference.equals("key_read_phone_state")) {
        k = 4;
      }
      break;
    case -102170884: 
      if (paramPreference.equals("key_read_contacts")) {
        k = 3;
      }
      break;
    case -457185970: 
      if (paramPreference.equals("key_read_image_video")) {
        k = 2;
      }
      break;
    case -466472657: 
      if (paramPreference.equals("key_read_notice_manager")) {
        k = 1;
      }
      break;
    case -1638359591: 
      if (paramPreference.equals("key_access_calendar")) {
        k = 0;
      }
      break;
    }
    switch (k)
    {
    default: 
      k = j;
      break;
    case 6: 
      k = 102;
      break;
    case 5: 
      k = 106;
      break;
    case 4: 
      k = 103;
      break;
    case 3: 
      k = 101;
      break;
    case 2: 
      k = 105;
      break;
    case 1: 
      i.j(getContext());
      return true;
    case 0: 
      k = 100;
    }
    M(requireContext(), this, k, new e(this));
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i(2132082705);
    L();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    if ((paramArrayOfInt.length > 0) && (paramArrayOfInt[0] == 0))
    {
      Log.i("Cal:D:PermDescription", "onRequestPermissionsResult granted");
    }
    else
    {
      Log.i("Cal:D:PermDescription", "onRequestPermissionsResult denied");
      switch (paramInt)
      {
      case 104: 
      default: 
        break;
      case 106: 
        if (!shouldShowRequestPermissionRationale("android.permission.READ_MEDIA_AUDIO")) {
          O();
        }
        break;
      case 105: 
        if ((!shouldShowRequestPermissionRationale("android.permission.READ_MEDIA_IMAGES")) && (!shouldShowRequestPermissionRationale("android.permission.READ_MEDIA_VIDEO"))) {
          O();
        }
        break;
      case 103: 
        if (!shouldShowRequestPermissionRationale("android.permission.READ_PHONE_STATE")) {
          O();
        }
        break;
      case 102: 
        if (!shouldShowRequestPermissionRationale("android.permission.WRITE_EXTERNAL_STORAGE")) {
          O();
        }
        break;
      case 101: 
        if (!shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS")) {
          O();
        }
        break;
      case 100: 
        startActivity(new Intent(getActivity(), NoPermissionCalendarActivity.class));
      }
    }
  }
  
  public void onResume()
  {
    super.onResume();
    N();
  }
  
  public void q(Bundle paramBundle, String paramString) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.f
 * JD-Core Version:    0.7.0.1
 */