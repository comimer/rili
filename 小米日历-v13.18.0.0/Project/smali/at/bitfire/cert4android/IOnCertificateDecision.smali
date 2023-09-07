.class public interface abstract Lat/bitfire/cert4android/IOnCertificateDecision;
.super Ljava/lang/Object;
.source "IOnCertificateDecision.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/cert4android/IOnCertificateDecision$Stub;,
        Lat/bitfire/cert4android/IOnCertificateDecision$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "at.bitfire.cert4android.IOnCertificateDecision"


# virtual methods
.method public abstract accept()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
