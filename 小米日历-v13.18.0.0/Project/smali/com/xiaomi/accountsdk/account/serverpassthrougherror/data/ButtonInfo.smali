.class public Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;
.super Ljava/lang/Object;
.source "ButtonInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extraWebUrl:Ljava/lang/String;

.field private localClickListener:Lv5/a;

.field private nativePage:Ljava/lang/String;

.field private pageParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 34
    const-class v1, Lv5/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lv5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lv5/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->localClickListener:Lv5/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "button_text"

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 18
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

    :cond_1
    const-string v0, "native_page"

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 21
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

    :cond_2
    const-string v0, "extra_web_url"

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 24
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

    :cond_3
    const-string v0, "page_params"

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 27
    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 28
    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->addJumpFlagToParams()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "button_text"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

    const-string v0, "native_page"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

    const-string v0, "extra_web_url"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

    const-string v0, "page_params"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/j;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->addJumpFlagToParams()V

    return-void
.end method

.method private addJumpFlagToParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    const-string v2, "spte_is_from_pass_through_error_jump"

    .line 17
    .line 18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method


# virtual methods
.method public copy()Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/util/HashMap;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;->e(Ljava/util/Map;)Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->localClickListener:Lv5/a;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;->c(Lv5/a;)Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo$b;->a()Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
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

.method public coverEmptyValueByLocalInfo(Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 50
    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->localClickListener:Lv5/a;

    .line 57
    .line 58
    if-nez v0, :cond_6

    .line 59
    .line 60
    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->localClickListener:Lv5/a;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->localClickListener:Lv5/a;

    .line 63
    .line 64
    :cond_6
    return-void
    .line 65
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtraWebUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

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

.method public getLocalClickListener()Lv5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->localClickListener:Lv5/a;

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

.method public getNativePage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

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

.method public getPageParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

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

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

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

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ButtonInfo{text=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", nativePage=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", extraWebUrl=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", pageParams="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", localClickListener="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->localClickListener:Lv5/a;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 v1, 0x7d

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->text:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->nativePage:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->extraWebUrl:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->pageParams:Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    return-void
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
