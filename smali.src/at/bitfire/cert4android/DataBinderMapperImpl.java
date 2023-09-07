package at.bitfire.cert4android;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import at.bitfire.cert4android.databinding.ActivityTrustCertificateBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl
  extends e
{
  private static final SparseIntArray INTERNAL_LAYOUT_ID_LOOKUP;
  private static final int LAYOUT_ACTIVITYTRUSTCERTIFICATE = 1;
  
  static
  {
    SparseIntArray localSparseIntArray = new SparseIntArray(1);
    INTERNAL_LAYOUT_ID_LOOKUP = localSparseIntArray;
    localSparseIntArray.put(R.layout.activity_trust_certificate, 1);
  }
  
  public List<e> collectDependencies()
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
    return localArrayList;
  }
  
  public String convertBrIdToString(int paramInt)
  {
    return (String)InnerBrLookup.sKeys.get(paramInt);
  }
  
  public ViewDataBinding getDataBinder(f paramf, View paramView, int paramInt)
  {
    paramInt = INTERNAL_LAYOUT_ID_LOOKUP.get(paramInt);
    if (paramInt > 0)
    {
      Object localObject = paramView.getTag();
      if (localObject != null)
      {
        if (paramInt == 1)
        {
          if ("layout/activity_trust_certificate_0".equals(localObject)) {
            return new ActivityTrustCertificateBindingImpl(paramf, paramView);
          }
          paramf = new StringBuilder();
          paramf.append("The tag for activity_trust_certificate is invalid. Received: ");
          paramf.append(localObject);
          throw new IllegalArgumentException(paramf.toString());
        }
      }
      else {
        throw new RuntimeException("view must have a tag");
      }
    }
    return null;
  }
  
  public ViewDataBinding getDataBinder(f paramf, View[] paramArrayOfView, int paramInt)
  {
    if ((paramArrayOfView != null) && (paramArrayOfView.length != 0) && (INTERNAL_LAYOUT_ID_LOOKUP.get(paramInt) > 0) && (paramArrayOfView[0].getTag() == null)) {
      throw new RuntimeException("view must have a tag");
    }
    return null;
  }
  
  public int getLayoutId(String paramString)
  {
    int i = 0;
    if (paramString == null) {
      return 0;
    }
    paramString = (Integer)InnerLayoutIdLookup.sKeys.get(paramString);
    if (paramString != null) {
      i = paramString.intValue();
    }
    return i;
  }
  
  private static class InnerBrLookup
  {
    static final SparseArray<String> sKeys;
    
    static
    {
      SparseArray localSparseArray = new SparseArray(2);
      sKeys = localSparseArray;
      localSparseArray.put(0, "_all");
      localSparseArray.put(1, "model");
    }
  }
  
  private static class InnerLayoutIdLookup
  {
    static final HashMap<String, Integer> sKeys;
    
    static
    {
      HashMap localHashMap = new HashMap(1);
      sKeys = localHashMap;
      localHashMap.put("layout/activity_trust_certificate_0", Integer.valueOf(R.layout.activity_trust_certificate));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.DataBinderMapperImpl
 * JD-Core Version:    0.7.0.1
 */