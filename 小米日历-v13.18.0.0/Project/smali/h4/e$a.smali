.class Lh4/e$a;
.super Ljava/lang/Object;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/e;->u(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh4/e;


# direct methods
.method constructor <init>(Lh4/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4/e$a;->a:Lh4/e;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lh4/e$a;->a:Lh4/e;

    .line 2
    .line 3
    invoke-static {p1}, Lh4/e;->p(Lh4/e;)Lh4/e$d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lh4/e$a;->a:Lh4/e;

    .line 10
    .line 11
    invoke-static {p1}, Lh4/e;->p(Lh4/e;)Lh4/e$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lh4/e$a;->a:Lh4/e;

    .line 16
    .line 17
    invoke-static {p2}, Lh4/e;->q(Lh4/e;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lh4/e$a;->a:Lh4/e;

    .line 22
    .line 23
    invoke-static {v1}, Lh4/e;->r(Lh4/e;)Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-interface {p1, p2, v0, v1, v2}, Lh4/e$d;->a(Lh4/e;IJ)V

    .line 32
    .line 33
    .line 34
    :cond_0
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
.end method
