.class public Lcom/android/ex/editstyledtext/EditStyledText$f;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field a:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$f;->a:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 6
    .line 7
    return-void
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


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 1
    const-string p1, "EditStyledText"

    .line 2
    .line 3
    const-string p2, "--- commitText:"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$f;->a:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;)Lcom/android/ex/editstyledtext/EditStyledText$c;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    throw p1
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

.method public finishComposingText()Z
    .locals 2

    .line 1
    const-string v0, "EditStyledText"

    .line 2
    .line 3
    const-string v1, "--- finishcomposing:"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$f;->a:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$f;->a:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$f;->a:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->d()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$f;->a:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->h()V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->finishComposingText()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0
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
