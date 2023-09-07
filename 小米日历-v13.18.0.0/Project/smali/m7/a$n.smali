.class public Lm7/a$n;
.super Ljava/lang/Object;
.source "VerificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/a$n$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(ILandroid/graphics/drawable/Drawable;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lm7/a$n;->a:I

    .line 4
    iput-object p2, p0, Lm7/a$n;->b:Landroid/graphics/drawable/Drawable;

    .line 5
    iput p3, p0, Lm7/a$n;->c:I

    .line 6
    iput p4, p0, Lm7/a$n;->d:I

    .line 7
    iput p5, p0, Lm7/a$n;->e:I

    .line 8
    iput p6, p0, Lm7/a$n;->f:I

    .line 9
    iput p7, p0, Lm7/a$n;->g:I

    .line 10
    iput-object p8, p0, Lm7/a$n;->h:Landroid/graphics/Rect;

    .line 11
    iput-object p9, p0, Lm7/a$n;->i:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/graphics/drawable/Drawable;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Lm7/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lm7/a$n;-><init>(ILandroid/graphics/drawable/Drawable;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Lm7/a$n;->d:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lm7/a$n;->e:I

    .line 6
    .line 7
    if-lez v0, :cond_0

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

.method public b()Z
    .locals 1

    .line 1
    iget v0, p0, Lm7/a$n;->f:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lm7/a$n;->g:I

    .line 6
    .line 7
    if-lez v0, :cond_0

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
