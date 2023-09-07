package com.market.pm;

import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.ResultReceiver;

public abstract interface IMarketInstallerService
  extends IInterface
{
  public abstract void installPackage(Uri paramUri, ResultReceiver paramResultReceiver, Bundle paramBundle)
    throws RemoteException;
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.pm.IMarketInstallerService
 * JD-Core Version:    0.7.0.1
 */