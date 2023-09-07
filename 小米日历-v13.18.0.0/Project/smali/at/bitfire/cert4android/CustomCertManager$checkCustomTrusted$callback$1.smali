.class public final Lat/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1;
.super Lat/bitfire/cert4android/IOnCertificateDecision$Stub;
.source "CustomCertManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/cert4android/CustomCertManager;->checkCustomTrusted$cert4android_release(Ljava/security/cert/X509Certificate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "at/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1",
        "Lat/bitfire/cert4android/IOnCertificateDecision$Stub;",
        "Lkotlin/u;",
        "accept",
        "reject",
        "cert4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $lock:Ljava/lang/Object;

.field final synthetic $valid:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lat/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1;->$lock:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lat/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1;->$valid:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    invoke-direct {p0}, Lat/bitfire/cert4android/IOnCertificateDecision$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method public accept()V
    .locals 3

    .line 1
    iget-object v0, p0, Lat/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1;->$lock:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lat/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1;->$valid:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0

    .line 19
    throw v1
    .line 20
    .line 21
    .line 22
.end method

.method public reject()V
    .locals 3

    .line 1
    iget-object v0, p0, Lat/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1;->$lock:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lat/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1;->$valid:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0

    .line 19
    throw v1
    .line 20
    .line 21
    .line 22
.end method
