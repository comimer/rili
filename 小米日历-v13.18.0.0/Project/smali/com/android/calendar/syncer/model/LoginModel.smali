.class public final Lcom/android/calendar/syncer/model/LoginModel;
.super Landroidx/lifecycle/i0;
.source "LoginModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u001a\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/android/calendar/syncer/model/LoginModel;",
        "Landroidx/lifecycle/i0;",
        "Lkotlin/u;",
        "clear",
        "Ljava/net/URI;",
        "baseURI",
        "Ljava/net/URI;",
        "getBaseURI",
        "()Ljava/net/URI;",
        "setBaseURI",
        "(Ljava/net/URI;)V",
        "Lcom/android/calendar/syncer/model/Credentials;",
        "credentials",
        "Lcom/android/calendar/syncer/model/Credentials;",
        "getCredentials",
        "()Lcom/android/calendar/syncer/model/Credentials;",
        "setCredentials",
        "(Lcom/android/calendar/syncer/model/Credentials;)V",
        "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;",
        "configuration",
        "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;",
        "getConfiguration",
        "()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;",
        "setConfiguration",
        "(Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;)V",
        "",
        "isValid",
        "()Z",
        "<init>",
        "()V",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private baseURI:Ljava/net/URI;

.field private configuration:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;

.field private credentials:Lcom/android/calendar/syncer/model/Credentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
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


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/calendar/syncer/model/LoginModel;->baseURI:Ljava/net/URI;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/calendar/syncer/model/LoginModel;->credentials:Lcom/android/calendar/syncer/model/Credentials;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/syncer/model/LoginModel;->configuration:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;

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
.end method

.method public final getBaseURI()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/LoginModel;->baseURI:Ljava/net/URI;

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

.method public final getConfiguration()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/LoginModel;->configuration:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;

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

.method public final getCredentials()Lcom/android/calendar/syncer/model/Credentials;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/LoginModel;->credentials:Lcom/android/calendar/syncer/model/Credentials;

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

.method public final isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/LoginModel;->baseURI:Ljava/net/URI;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/syncer/model/LoginModel;->credentials:Lcom/android/calendar/syncer/model/Credentials;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
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

.method public final setBaseURI(Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/syncer/model/LoginModel;->baseURI:Ljava/net/URI;

    .line 2
    .line 3
    return-void
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

.method public final setConfiguration(Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/syncer/model/LoginModel;->configuration:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;

    .line 2
    .line 3
    return-void
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

.method public final setCredentials(Lcom/android/calendar/syncer/model/Credentials;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/syncer/model/LoginModel;->credentials:Lcom/android/calendar/syncer/model/Credentials;

    .line 2
    .line 3
    return-void
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
