.class public Lcom/miui/zeus/landingpage/sdk/LandingPageHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "LandingPageHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static land(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/zeus/landingpage/sdk/LandingPageHelper;->land(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static land(Ljava/lang/String;Z)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LandingPageHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "url is empty"

    invoke-static {v1, p0}, Lcom/miui/zeus/landingpage/sdk/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/miui/zeus/landingpage/sdk/i;->a(Ljava/lang/String;ZI)Z

    move-result p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "result="

    aput-object v0, p1, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    invoke-static {v1, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public static land(Ljava/lang/String;ZI)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LandingPageHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "url is empty"

    invoke-static {v1, p0}, Lcom/miui/zeus/landingpage/sdk/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/zeus/landingpage/sdk/i;->a(Ljava/lang/String;ZI)Z

    move-result p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "result="

    aput-object p2, p1, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-static {v1, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public static registerAppLaunchListener(Lcom/miui/zeus/landingpage/sdk/OnAppLaunchListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/f;->a()Lcom/miui/zeus/landingpage/sdk/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/miui/zeus/landingpage/sdk/f;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/f;->a:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static registerDownloadListener(Lcom/miui/zeus/landingpage/sdk/DownloadListener;)V
    .locals 1

    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/zeus/landingpage/sdk/c;->a(Lcom/miui/zeus/landingpage/sdk/DownloadListener;)V

    return-void
.end method

.method public static unRegisterAppLaunchListener(Lcom/miui/zeus/landingpage/sdk/OnAppLaunchListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/f;->a()Lcom/miui/zeus/landingpage/sdk/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/miui/zeus/landingpage/sdk/f;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/f;->a:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static unRegisterDownloadListener(Lcom/miui/zeus/landingpage/sdk/DownloadListener;)V
    .locals 1

    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/zeus/landingpage/sdk/c;->b(Lcom/miui/zeus/landingpage/sdk/DownloadListener;)V

    return-void
.end method
