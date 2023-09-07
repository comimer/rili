.class public Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;
.super Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
.source "H5Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action<",
        "Le5/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5Action"


# instance fields
.field private mH5Url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;->mH5Url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "H5Action"

    const-string v1, "H5Action parse parcel e : "

    .line 4
    invoke-static {v0, v1, p1}, Ld6/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;Le5/c;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action<",
            "Le5/c;",
            ">.a;",
            "Le5/c;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;-><init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;Landroid/os/IInterface;Z)V

    .line 6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "H5Action"

    const-string p2, "h5 url is null!"

    .line 7
    invoke-static {p1, p2}, Ld6/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iput-object p4, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;->mH5Url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActionType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;->mH5Url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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

.method protected bridge synthetic readBinder(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;->readBinder(Landroid/os/IBinder;)Le5/c;

    move-result-object p1

    return-object p1
.end method

.method protected readBinder(Landroid/os/IBinder;)Le5/c;
    .locals 0

    .line 2
    invoke-static {p1}, Le5/c$a;->n0(Landroid/os/IBinder;)Le5/c;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;->mH5Url:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
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
