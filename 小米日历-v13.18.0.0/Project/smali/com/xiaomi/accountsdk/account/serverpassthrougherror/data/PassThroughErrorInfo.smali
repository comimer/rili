.class public Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;
.super Ljava/lang/Object;
.source "PassThroughErrorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private msgContent:Ljava/lang/String;

.field private negativeButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

.field private neutralButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

.field private positiveButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>(La6/k$f;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "title"

    .line 18
    invoke-virtual {p1, v0}, La6/k$f;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 20
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->title:Ljava/lang/String;

    :cond_1
    const-string v0, "tips"

    .line 21
    invoke-virtual {p1, v0}, La6/k$f;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 23
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->msgContent:Ljava/lang/String;

    :cond_2
    const-string v0, "negative_button"

    .line 24
    invoke-virtual {p1, v0}, La6/k$f;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 26
    new-instance v1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->negativeButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    :cond_3
    const-string v0, "neutral_button"

    .line 27
    invoke-virtual {p1, v0}, La6/k$f;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 29
    new-instance v1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->neutralButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    :cond_4
    const-string v0, "positive_button"

    .line 30
    invoke-virtual {p1, v0}, La6/k$f;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 32
    new-instance v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->positiveButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    :cond_5
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->title:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->msgContent:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->negativeButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 37
    const-class v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->neutralButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 38
    const-class v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->positiveButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->msgContent:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->negativeButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 6
    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->neutralButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 7
    iput-object p5, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->positiveButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "tips"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->msgContent:Ljava/lang/String;

    const-string v0, "title"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->title:Ljava/lang/String;

    const-string v0, "negative_button"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->negativeButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    :cond_1
    const-string v0, "neutral_button"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    new-instance v1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->neutralButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    :cond_2
    const-string v0, "positive_button"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    new-instance v1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->positiveButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNegativeButtonInfo()Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->negativeButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

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

.method public getNeutralButtonInfo()Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->neutralButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

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

.method public getPositiveButtonInfo()Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->positiveButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

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

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->msgContent:Ljava/lang/String;

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

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->title:Ljava/lang/String;

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
    const-string v1, "PassThroughErrorInfo{title=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->title:Ljava/lang/String;

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
    const-string v2, ", msgContent=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->msgContent:Ljava/lang/String;

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
    const-string v1, ", negativeButtonInfo="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->negativeButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", neutralButtonInfo="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->neutralButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", positiveButtonInfo="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->positiveButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 v1, 0x7d

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
    .line 74
    .line 75
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->msgContent:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->negativeButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->neutralButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->positiveButtonInfo:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    .line 25
    .line 26
    return-void
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
