.class public Lo4/a;
.super Ljava/lang/Object;
.source "TodoConstants.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "content://com.miui.todo.provider/todo"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lo4/a;->a:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v0, "content://com.miui.todo.provider/todo/outer"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lo4/a;->b:Landroid/net/Uri;

    .line 16
    .line 17
    const-string v0, "content://com.miui.todo.provider/todo/out_finish"

    .line 18
    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lo4/a;->c:Landroid/net/Uri;

    .line 24
    .line 25
    const-string v1, "id"

    .line 26
    .line 27
    const-string v2, "content"

    .line 28
    .line 29
    const-string v3, "remind_type"

    .line 30
    .line 31
    const-string v4, "remind_time"

    .line 32
    .line 33
    const-string v5, "input_type"

    .line 34
    .line 35
    const-string v6, "is_finish"

    .line 36
    .line 37
    const-string v7, "last_modified_time"

    .line 38
    .line 39
    const-string v8, "create_time"

    .line 40
    .line 41
    const-string v9, "plain_text"

    .line 42
    .line 43
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lo4/a;->d:[Ljava/lang/String;

    .line 48
    .line 49
    return-void
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
