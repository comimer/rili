.class Lcom/android/ex/chips/RecipientEditTextView$e;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$e;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$e;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->d(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$e;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 10
    .line 11
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$w;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v0, v2}, Lcom/android/ex/chips/RecipientEditTextView$w;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$e;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->e(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$e;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->d(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
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
