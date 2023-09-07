.class Lcom/android/ex/chips/h;
.super Ljava/lang/Object;
.source "Queries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/h$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/android/ex/chips/h$c;

.field public static final b:Lcom/android/ex/chips/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/ex/chips/h$a;

    .line 2
    .line 3
    const-string v1, "display_name"

    .line 4
    .line 5
    const-string v2, "data1"

    .line 6
    .line 7
    const-string v3, "data2"

    .line 8
    .line 9
    const-string v4, "data3"

    .line 10
    .line 11
    const-string v5, "contact_id"

    .line 12
    .line 13
    const-string v6, "_id"

    .line 14
    .line 15
    const-string v7, "photo_thumb_uri"

    .line 16
    .line 17
    const-string v8, "display_name_source"

    .line 18
    .line 19
    const-string v9, "lookup"

    .line 20
    .line 21
    const-string v10, "mimetype"

    .line 22
    .line 23
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 28
    .line 29
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 30
    .line 31
    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/h$a;-><init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/android/ex/chips/h;->a:Lcom/android/ex/chips/h$c;

    .line 35
    .line 36
    new-instance v0, Lcom/android/ex/chips/h$b;

    .line 37
    .line 38
    const-string v1, "display_name"

    .line 39
    .line 40
    const-string v2, "data1"

    .line 41
    .line 42
    const-string v3, "data2"

    .line 43
    .line 44
    const-string v4, "data3"

    .line 45
    .line 46
    const-string v5, "contact_id"

    .line 47
    .line 48
    const-string v6, "_id"

    .line 49
    .line 50
    const-string v7, "photo_thumb_uri"

    .line 51
    .line 52
    const-string v8, "display_name_source"

    .line 53
    .line 54
    const-string v9, "lookup"

    .line 55
    .line 56
    const-string v10, "mimetype"

    .line 57
    .line 58
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 63
    .line 64
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 65
    .line 66
    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/h$b;-><init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/android/ex/chips/h;->b:Lcom/android/ex/chips/h$c;

    .line 70
    .line 71
    return-void
    .line 72
    .line 73
    .line 74
    .line 75
.end method
