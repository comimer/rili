.class public Lm7/a$n$a;
.super Ljava/lang/Object;
.source "VerificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/a$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field public f:I

.field public g:I

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Ln5/d;->l:I

    .line 5
    .line 6
    iput v0, p0, Lm7/a$n$a;->a:I

    .line 7
    .line 8
    const/16 v0, 0x51

    .line 9
    .line 10
    iput v0, p0, Lm7/a$n$a;->c:I

    .line 11
    .line 12
    return-void
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
.method public a()Lm7/a$n;
    .locals 12

    .line 1
    new-instance v11, Lm7/a$n;

    .line 2
    .line 3
    iget v1, p0, Lm7/a$n$a;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Lm7/a$n$a;->b:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    iget v3, p0, Lm7/a$n$a;->c:I

    .line 8
    .line 9
    iget v4, p0, Lm7/a$n$a;->d:I

    .line 10
    .line 11
    iget v5, p0, Lm7/a$n$a;->e:I

    .line 12
    .line 13
    iget v6, p0, Lm7/a$n$a;->f:I

    .line 14
    .line 15
    iget v7, p0, Lm7/a$n$a;->g:I

    .line 16
    .line 17
    iget-object v8, p0, Lm7/a$n$a;->h:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget-object v9, p0, Lm7/a$n$a;->i:Landroid/graphics/Rect;

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    move-object v0, v11

    .line 23
    invoke-direct/range {v0 .. v10}, Lm7/a$n;-><init>(ILandroid/graphics/drawable/Drawable;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Lm7/a$a;)V

    .line 24
    .line 25
    .line 26
    return-object v11
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
