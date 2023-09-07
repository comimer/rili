package com.miui.msa.api.landingPage;

public enum AppStatus
{
  static
  {
    AppStatus localAppStatus1 = new AppStatus("UNINSTALLED", 0);
    UNINSTALLED = localAppStatus1;
    AppStatus localAppStatus2 = new AppStatus("INSTALLED", 1);
    INSTALLED = localAppStatus2;
    AppStatus localAppStatus3 = new AppStatus("DOWNLOAD_START", 2);
    DOWNLOAD_START = localAppStatus3;
    AppStatus localAppStatus4 = new AppStatus("DOWNLOADING", 3);
    DOWNLOADING = localAppStatus4;
    AppStatus localAppStatus5 = new AppStatus("DOWNLOAD_SUCCESS", 4);
    DOWNLOAD_SUCCESS = localAppStatus5;
    AppStatus localAppStatus6 = new AppStatus("DOWNLOAD_FAIL", 5);
    DOWNLOAD_FAIL = localAppStatus6;
    AppStatus localAppStatus7 = new AppStatus("DOWNLOAD_CANCEL", 6);
    DOWNLOAD_CANCEL = localAppStatus7;
    AppStatus localAppStatus8 = new AppStatus("INSTALL_START", 7);
    INSTALL_START = localAppStatus8;
    AppStatus localAppStatus9 = new AppStatus("INSTALLING", 8);
    INSTALLING = localAppStatus9;
    AppStatus localAppStatus10 = new AppStatus("INSTALL_SUCCESS", 9);
    INSTALL_SUCCESS = localAppStatus10;
    AppStatus localAppStatus11 = new AppStatus("INSTALL_FAIL", 10);
    INSTALL_FAIL = localAppStatus11;
    AppStatus localAppStatus12 = new AppStatus("TASK_EXIST", 11);
    TASK_EXIST = localAppStatus12;
    AppStatus localAppStatus13 = new AppStatus("UNKNOWN", 12);
    UNKNOWN = localAppStatus13;
    AppStatus localAppStatus14 = new AppStatus("WAITING", 13);
    WAITING = localAppStatus14;
    $VALUES = new AppStatus[] { localAppStatus1, localAppStatus2, localAppStatus3, localAppStatus4, localAppStatus5, localAppStatus6, localAppStatus7, localAppStatus8, localAppStatus9, localAppStatus10, localAppStatus11, localAppStatus12, localAppStatus13, localAppStatus14 };
  }
  
  private AppStatus() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.msa.api.landingPage.AppStatus
 * JD-Core Version:    0.7.0.1
 */