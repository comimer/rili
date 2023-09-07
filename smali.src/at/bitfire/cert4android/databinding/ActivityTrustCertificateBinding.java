package at.bitfire.cert4android.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.g;
import at.bitfire.cert4android.R.layout;
import at.bitfire.cert4android.TrustCertificateActivity.Model;

public abstract class ActivityTrustCertificateBinding
  extends ViewDataBinding
{
  protected TrustCertificateActivity.Model mModel;
  
  protected ActivityTrustCertificateBinding(Object paramObject, View paramView, int paramInt)
  {
    super(paramObject, paramView, paramInt);
  }
  
  public static ActivityTrustCertificateBinding bind(View paramView)
  {
    return bind(paramView, g.d());
  }
  
  @Deprecated
  public static ActivityTrustCertificateBinding bind(View paramView, Object paramObject)
  {
    return (ActivityTrustCertificateBinding)ViewDataBinding.bind(paramObject, paramView, R.layout.activity_trust_certificate);
  }
  
  public static ActivityTrustCertificateBinding inflate(LayoutInflater paramLayoutInflater)
  {
    return inflate(paramLayoutInflater, g.d());
  }
  
  public static ActivityTrustCertificateBinding inflate(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    return inflate(paramLayoutInflater, paramViewGroup, paramBoolean, g.d());
  }
  
  @Deprecated
  public static ActivityTrustCertificateBinding inflate(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, boolean paramBoolean, Object paramObject)
  {
    return (ActivityTrustCertificateBinding)ViewDataBinding.inflateInternal(paramLayoutInflater, R.layout.activity_trust_certificate, paramViewGroup, paramBoolean, paramObject);
  }
  
  @Deprecated
  public static ActivityTrustCertificateBinding inflate(LayoutInflater paramLayoutInflater, Object paramObject)
  {
    return (ActivityTrustCertificateBinding)ViewDataBinding.inflateInternal(paramLayoutInflater, R.layout.activity_trust_certificate, null, false, paramObject);
  }
  
  public TrustCertificateActivity.Model getModel()
  {
    return this.mModel;
  }
  
  public abstract void setModel(TrustCertificateActivity.Model paramModel);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.databinding.ActivityTrustCertificateBinding
 * JD-Core Version:    0.7.0.1
 */