.class Lcom/android/ex/chips/RecipientEditTextView$m;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->W0(Lcom/android/ex/chips/r;Lcom/android/ex/chips/RecipientEditTextView$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ex/chips/r;

.field final synthetic b:Lcom/android/ex/chips/RecipientEditTextView$n;

.field final synthetic c:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/r;Lcom/android/ex/chips/RecipientEditTextView$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$m;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$m;->a:Lcom/android/ex/chips/r;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/ex/chips/RecipientEditTextView$m;->b:Lcom/android/ex/chips/RecipientEditTextView$n;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
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
    .line 76
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
.end method

.method private d(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$m;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$m;->b:Lcom/android/ex/chips/RecipientEditTextView$n;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/ex/chips/RecipientEditTextView;->j(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$n;Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$m;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$m;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 25
    .line 26
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$m$a;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$m$a;-><init>(Lcom/android/ex/chips/RecipientEditTextView$m;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
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
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView$m;->b()V

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

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$m;->a:Lcom/android/ex/chips/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/ex/chips/r;->s()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$m;->d(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$m;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->i(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$m;->d(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void
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
