.class public interface abstract Lat/bitfire/cert4android/ICustomCertService;
.super Ljava/lang/Object;
.source "ICustomCertService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/cert4android/ICustomCertService$Stub;,
        Lat/bitfire/cert4android/ICustomCertService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "at.bitfire.cert4android.ICustomCertService"


# virtual methods
.method public abstract abortCheck(Lat/bitfire/cert4android/IOnCertificateDecision;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkTrusted([BZZLat/bitfire/cert4android/IOnCertificateDecision;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
