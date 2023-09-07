package at.bitfire.cert4android.databinding;

import android.content.res.Resources;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewDataBinding.i;
import androidx.databinding.f;
import androidx.databinding.h;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.u;
import at.bitfire.cert4android.BR;
import at.bitfire.cert4android.R.string;
import at.bitfire.cert4android.TrustCertificateActivity.Model;
import y.c;

public class ActivityTrustCertificateBindingImpl
  extends ActivityTrustCertificateBinding
{
  private static final ViewDataBinding.i sIncludes;
  private static final SparseIntArray sViewsWithIds;
  private long mDirtyFlags = -1L;
  private final ScrollView mboundView0;
  private final TextView mboundView1;
  private final TextView mboundView2;
  private final TextView mboundView3;
  private final TextView mboundView4;
  private final TextView mboundView5;
  private final CheckBox mboundView6;
  private h mboundView6androidCheckedAttrChanged = new h()
  {
    public void onChange()
    {
      boolean bool = ActivityTrustCertificateBindingImpl.this.mboundView6.isChecked();
      Object localObject = ActivityTrustCertificateBindingImpl.this.mModel;
      int i = 1;
      int j;
      if (localObject != null) {
        j = 1;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        localObject = ((TrustCertificateActivity.Model)localObject).getVerifiedByUser();
        if (localObject != null) {
          j = i;
        } else {
          j = 0;
        }
        if (j != 0) {
          ((u)localObject).n(Boolean.valueOf(bool));
        }
      }
    }
  };
  private final Button mboundView7;
  
  public ActivityTrustCertificateBindingImpl(f paramf, View paramView)
  {
    this(paramf, paramView, ViewDataBinding.mapBindings(paramf, paramView, 8, null, sViewsWithIds));
  }
  
  private ActivityTrustCertificateBindingImpl(f paramf, View paramView, Object[] paramArrayOfObject)
  {
    super(paramf, paramView, 7);
    paramf = (ScrollView)paramArrayOfObject[0];
    this.mboundView0 = paramf;
    paramf.setTag(null);
    paramf = (TextView)paramArrayOfObject[1];
    this.mboundView1 = paramf;
    paramf.setTag(null);
    paramf = (TextView)paramArrayOfObject[2];
    this.mboundView2 = paramf;
    paramf.setTag(null);
    paramf = (TextView)paramArrayOfObject[3];
    this.mboundView3 = paramf;
    paramf.setTag(null);
    paramf = (TextView)paramArrayOfObject[4];
    this.mboundView4 = paramf;
    paramf.setTag(null);
    paramf = (TextView)paramArrayOfObject[5];
    this.mboundView5 = paramf;
    paramf.setTag(null);
    paramf = (CheckBox)paramArrayOfObject[6];
    this.mboundView6 = paramf;
    paramf.setTag(null);
    paramf = (Button)paramArrayOfObject[7];
    this.mboundView7 = paramf;
    paramf.setTag(null);
    setRootTag(paramView);
    invalidateAll();
  }
  
  private boolean onChangeModelIssuedBy(u<String> paramu, int paramInt)
  {
    if (paramInt == BR._all) {
      try
      {
        this.mDirtyFlags |= 0x2;
        return true;
      }
      finally {}
    }
    return false;
  }
  
  private boolean onChangeModelIssuedFor(u<String> paramu, int paramInt)
  {
    if (paramInt == BR._all) {
      try
      {
        this.mDirtyFlags |= 1L;
        return true;
      }
      finally {}
    }
    return false;
  }
  
  private boolean onChangeModelSha1(u<String> paramu, int paramInt)
  {
    if (paramInt == BR._all) {
      try
      {
        this.mDirtyFlags |= 0x4;
        return true;
      }
      finally {}
    }
    return false;
  }
  
  private boolean onChangeModelSha256(u<String> paramu, int paramInt)
  {
    if (paramInt == BR._all) {
      try
      {
        this.mDirtyFlags |= 0x10;
        return true;
      }
      finally {}
    }
    return false;
  }
  
  private boolean onChangeModelValidFrom(u<String> paramu, int paramInt)
  {
    if (paramInt == BR._all) {
      try
      {
        this.mDirtyFlags |= 0x8;
        return true;
      }
      finally {}
    }
    return false;
  }
  
  private boolean onChangeModelValidTo(u<String> paramu, int paramInt)
  {
    if (paramInt == BR._all) {
      try
      {
        this.mDirtyFlags |= 0x20;
        return true;
      }
      finally {}
    }
    return false;
  }
  
  private boolean onChangeModelVerifiedByUser(u<Boolean> paramu, int paramInt)
  {
    if (paramInt == BR._all) {
      try
      {
        this.mDirtyFlags |= 0x40;
        return true;
      }
      finally {}
    }
    return false;
  }
  
  protected void executeBindings()
  {
    try
    {
      long l = this.mDirtyFlags;
      this.mDirtyFlags = 0L;
      TrustCertificateActivity.Model localModel = this.mModel;
      boolean bool = false;
      label87:
      label380:
      Object localObject7;
      label142:
      label197:
      Object localObject8;
      Object localObject9;
      Object localObject10;
      Object localObject11;
      if ((0x1FF & l) != 0L)
      {
        if ((l & 0x181) != 0L)
        {
          if (localModel != null) {
            localObject1 = localModel.getIssuedFor();
          } else {
            localObject1 = null;
          }
          updateLiveDataRegistration(0, (LiveData)localObject1);
          if (localObject1 != null)
          {
            localObject1 = (String)((LiveData)localObject1).e();
            break label87;
          }
        }
        Object localObject1 = null;
        if ((l & 0x182) != 0L)
        {
          if (localModel != null) {
            localObject3 = localModel.getIssuedBy();
          } else {
            localObject3 = null;
          }
          updateLiveDataRegistration(1, (LiveData)localObject3);
          if (localObject3 != null)
          {
            localObject3 = (String)((LiveData)localObject3).e();
            break label142;
          }
        }
        Object localObject3 = null;
        if ((l & 0x184) != 0L)
        {
          if (localModel != null) {
            localObject4 = localModel.getSha1();
          } else {
            localObject4 = null;
          }
          updateLiveDataRegistration(2, (LiveData)localObject4);
          if (localObject4 != null)
          {
            localObject4 = (String)((LiveData)localObject4).e();
            break label197;
          }
        }
        Object localObject4 = null;
        Object localObject6;
        if ((l & 0x1A8) != 0L)
        {
          if (localModel != null)
          {
            localObject5 = localModel.getValidFrom();
            localObject6 = localModel.getValidTo();
          }
          else
          {
            localObject5 = null;
            localObject6 = null;
          }
          updateLiveDataRegistration(3, (LiveData)localObject5);
          updateLiveDataRegistration(5, (LiveData)localObject6);
          if (localObject5 != null) {
            localObject5 = (String)((LiveData)localObject5).e();
          } else {
            localObject5 = null;
          }
          if (localObject6 != null) {
            localObject6 = (String)((LiveData)localObject6).e();
          } else {
            localObject6 = null;
          }
          localObject6 = this.mboundView3.getResources().getString(R.string.trust_certificate_validity_period_value, new Object[] { localObject5, localObject6 });
        }
        else
        {
          localObject6 = null;
        }
        if ((l & 0x190) != 0L)
        {
          if (localModel != null) {
            localObject5 = localModel.getSha256();
          } else {
            localObject5 = null;
          }
          updateLiveDataRegistration(4, (LiveData)localObject5);
          if (localObject5 != null)
          {
            localObject5 = (String)((LiveData)localObject5).e();
            break label380;
          }
        }
        Object localObject5 = null;
        localObject7 = localObject6;
        localObject8 = localObject5;
        localObject9 = localObject1;
        localObject10 = localObject4;
        localObject11 = localObject3;
        if ((l & 0x1C0) != 0L)
        {
          if (localModel != null) {
            localObject11 = localModel.getVerifiedByUser();
          } else {
            localObject11 = null;
          }
          updateLiveDataRegistration(6, (LiveData)localObject11);
          if (localObject11 != null) {
            localObject11 = (Boolean)((LiveData)localObject11).e();
          } else {
            localObject11 = null;
          }
          bool = ViewDataBinding.safeUnbox((Boolean)localObject11);
          localObject7 = localObject6;
          localObject8 = localObject5;
          localObject9 = localObject1;
          localObject10 = localObject4;
          localObject11 = localObject3;
        }
      }
      else
      {
        localObject7 = null;
        localObject8 = null;
        localObject9 = null;
        localObject10 = null;
        localObject11 = null;
      }
      if ((l & 0x181) != 0L) {
        c.c(this.mboundView1, localObject9);
      }
      if ((0x182 & l) != 0L) {
        c.c(this.mboundView2, (CharSequence)localObject11);
      }
      if ((0x1A8 & l) != 0L) {
        c.c(this.mboundView3, localObject7);
      }
      if ((0x184 & l) != 0L) {
        c.c(this.mboundView4, localObject10);
      }
      if ((l & 0x190) != 0L) {
        c.c(this.mboundView5, localObject8);
      }
      if ((0x1C0 & l) != 0L)
      {
        y.a.a(this.mboundView6, bool);
        this.mboundView7.setEnabled(bool);
      }
      if ((l & 0x100) != 0L) {
        y.a.b(this.mboundView6, null, this.mboundView6androidCheckedAttrChanged);
      }
      return;
    }
    finally {}
  }
  
  public boolean hasPendingBindings()
  {
    try
    {
      return this.mDirtyFlags != 0L;
    }
    finally {}
  }
  
  public void invalidateAll()
  {
    try
    {
      this.mDirtyFlags = 256L;
      requestRebind();
      return;
    }
    finally {}
  }
  
  protected boolean onFieldChange(int paramInt1, Object paramObject, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return false;
    case 6: 
      return onChangeModelVerifiedByUser((u)paramObject, paramInt2);
    case 5: 
      return onChangeModelValidTo((u)paramObject, paramInt2);
    case 4: 
      return onChangeModelSha256((u)paramObject, paramInt2);
    case 3: 
      return onChangeModelValidFrom((u)paramObject, paramInt2);
    case 2: 
      return onChangeModelSha1((u)paramObject, paramInt2);
    case 1: 
      return onChangeModelIssuedBy((u)paramObject, paramInt2);
    }
    return onChangeModelIssuedFor((u)paramObject, paramInt2);
  }
  
  public void setModel(TrustCertificateActivity.Model paramModel)
  {
    this.mModel = paramModel;
    try
    {
      this.mDirtyFlags |= 0x80;
      notifyPropertyChanged(BR.model);
      super.requestRebind();
      return;
    }
    finally {}
  }
  
  public boolean setVariable(int paramInt, Object paramObject)
  {
    boolean bool;
    if (BR.model == paramInt)
    {
      setModel((TrustCertificateActivity.Model)paramObject);
      bool = true;
    }
    else
    {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.databinding.ActivityTrustCertificateBindingImpl
 * JD-Core Version:    0.7.0.1
 */