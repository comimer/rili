.class public final synthetic Lcom/miui/calendar/view/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/view/c;

.field public final synthetic b:Lcom/miui/calendar/view/w;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/view/c;Lcom/miui/calendar/view/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/view/v;->a:Lcom/miui/calendar/view/c;

    iput-object p2, p0, Lcom/miui/calendar/view/v;->b:Lcom/miui/calendar/view/w;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/miui/calendar/view/v;->a:Lcom/miui/calendar/view/c;

    iget-object v1, p0, Lcom/miui/calendar/view/v;->b:Lcom/miui/calendar/view/w;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/miui/calendar/view/w;->W(Lcom/miui/calendar/view/c;Lcom/miui/calendar/view/w;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
