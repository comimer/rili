.class Lcom/miui/calendar/repeats/RepeatEndActivity$a$c;
.super Ljava/lang/Object;
.source "RepeatEndActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/repeats/RepeatEndActivity$a;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/pickerwidget/widget/NumberPicker;

.field final synthetic b:Lcom/miui/calendar/repeats/RepeatEndActivity$a;


# direct methods
.method constructor <init>(Lcom/miui/calendar/repeats/RepeatEndActivity$a;Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/repeats/RepeatEndActivity$a$c;->b:Lcom/miui/calendar/repeats/RepeatEndActivity$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/miui/calendar/repeats/RepeatEndActivity$a$c;->a:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/repeats/RepeatEndActivity$a$c;->b:Lcom/miui/calendar/repeats/RepeatEndActivity$a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/repeats/RepeatEndActivity$a;->K(Lcom/miui/calendar/repeats/RepeatEndActivity$a;)Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x2

    .line 8
    iput p2, p1, Lcom/miui/calendar/repeats/RepeatEndSchema;->index:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/miui/calendar/repeats/RepeatEndActivity$a$c;->b:Lcom/miui/calendar/repeats/RepeatEndActivity$a;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/miui/calendar/repeats/RepeatEndActivity$a;->K(Lcom/miui/calendar/repeats/RepeatEndActivity$a;)Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/miui/calendar/repeats/RepeatEndActivity$a$c;->a:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 17
    .line 18
    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput p2, p1, Lcom/miui/calendar/repeats/RepeatEndSchema;->times:I

    .line 23
    .line 24
    iget-object p1, p0, Lcom/miui/calendar/repeats/RepeatEndActivity$a$c;->b:Lcom/miui/calendar/repeats/RepeatEndActivity$a;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/miui/calendar/repeats/RepeatEndActivity$a;->N(Lcom/miui/calendar/repeats/RepeatEndActivity$a;)V

    .line 27
    .line 28
    .line 29
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
.end method
