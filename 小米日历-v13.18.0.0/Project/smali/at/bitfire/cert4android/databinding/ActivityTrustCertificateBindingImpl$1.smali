.class Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl$1;
.super Ljava/lang/Object;
.source "ActivityTrustCertificateBindingImpl.java"

# interfaces
.implements Landroidx/databinding/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl;


# direct methods
.method constructor <init>(Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl$1;->this$0:Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
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
.end method


# virtual methods
.method public onChange()V
    .locals 5

    .line 1
    iget-object v0, p0, Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl$1;->this$0:Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl;->access$000(Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl;)Landroid/widget/CheckBox;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl$1;->this$0:Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBindingImpl;

    .line 12
    .line 13
    iget-object v1, v1, Lat/bitfire/cert4android/databinding/ActivityTrustCertificateBinding;->mModel:Lat/bitfire/cert4android/TrustCertificateActivity$Model;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move v4, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v4, v3

    .line 22
    :goto_0
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Lat/bitfire/cert4android/TrustCertificateActivity$Model;->getVerifiedByUser()Landroidx/lifecycle/u;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v2, v3

    .line 32
    :goto_1
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Landroidx/lifecycle/u;->n(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method
