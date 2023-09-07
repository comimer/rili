package com.android.calendar.syncer.model;

import androidx.lifecycle.i0;
import com.android.calendar.syncer.resource.DavResourceFinder.Configuration;
import java.net.URI;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/LoginModel;", "Landroidx/lifecycle/i0;", "Lkotlin/u;", "clear", "Ljava/net/URI;", "baseURI", "Ljava/net/URI;", "getBaseURI", "()Ljava/net/URI;", "setBaseURI", "(Ljava/net/URI;)V", "Lcom/android/calendar/syncer/model/Credentials;", "credentials", "Lcom/android/calendar/syncer/model/Credentials;", "getCredentials", "()Lcom/android/calendar/syncer/model/Credentials;", "setCredentials", "(Lcom/android/calendar/syncer/model/Credentials;)V", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;", "configuration", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;", "getConfiguration", "()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;", "setConfiguration", "(Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;)V", "", "isValid", "()Z", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class LoginModel
  extends i0
{
  private URI baseURI;
  private DavResourceFinder.Configuration configuration;
  private Credentials credentials;
  
  public final void clear()
  {
    this.baseURI = null;
    this.credentials = null;
    this.configuration = null;
  }
  
  public final URI getBaseURI()
  {
    return this.baseURI;
  }
  
  public final DavResourceFinder.Configuration getConfiguration()
  {
    return this.configuration;
  }
  
  public final Credentials getCredentials()
  {
    return this.credentials;
  }
  
  public final boolean isValid()
  {
    boolean bool;
    if ((this.baseURI != null) && (this.credentials != null)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public final void setBaseURI(URI paramURI)
  {
    this.baseURI = paramURI;
  }
  
  public final void setConfiguration(DavResourceFinder.Configuration paramConfiguration)
  {
    this.configuration = paramConfiguration;
  }
  
  public final void setCredentials(Credentials paramCredentials)
  {
    this.credentials = paramCredentials;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.LoginModel
 * JD-Core Version:    0.7.0.1
 */