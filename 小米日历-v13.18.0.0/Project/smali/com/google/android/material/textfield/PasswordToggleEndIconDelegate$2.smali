.class Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;
.super Ljava/lang/Object;
.source "PasswordToggleEndIconDelegate.java"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

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
.method public onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->access$000(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    xor-int/2addr p1, v1

    .line 21
    invoke-virtual {v2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->access$100(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Landroid/text/TextWatcher;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->access$100(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Landroid/text/TextWatcher;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 40
    .line 41
    .line 42
    return-void
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
