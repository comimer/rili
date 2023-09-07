.class public final synthetic Lcom/miui/calendar/detail/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/detail/HoroscopeSelectActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/detail/i;->a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

    iput p2, p0, Lcom/miui/calendar/detail/i;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/detail/i;->a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

    iget v1, p0, Lcom/miui/calendar/detail/i;->b:I

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->f(Lcom/miui/calendar/detail/HoroscopeSelectActivity;ILandroid/view/View;)V

    return-void
.end method
