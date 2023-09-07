.class public final Lcom/android/calendar/event/v2/AgendaEventInfoFragment;
.super Lcom/android/calendar/event/v2/BaseEventInfoFragment;
.source "AgendaEventInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/v2/AgendaEventInfoFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/v2/BaseEventInfoFragment<",
        "Lcom/android/calendar/common/event/schema/AgendaEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u00cf\u0001B\t\u00a2\u0006\u0006\u0008\u00cd\u0001\u0010\u00ce\u0001J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u0008\u0010\u0006\u001a\u00020\u0003H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0010H\u0002J\u0012\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\tH\u0002J\u0008\u0010\u0016\u001a\u00020\u0003H\u0002J/\u0010\u001c\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0008\u0010!\u001a\u00020\u0003H\u0016J\u0008\u0010\"\u001a\u00020\u0003H\u0016J\u0012\u0010$\u001a\u0004\u0018\u00010\u00022\u0006\u0010#\u001a\u00020\rH\u0014J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014J&\u0010-\u001a\u0004\u0018\u00010,2\u0006\u0010\'\u001a\u00020&2\u0008\u0010)\u001a\u0004\u0018\u00010(2\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0016J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\tH\u0016J\u0008\u00100\u001a\u00020\u0003H\u0016J\u0012\u00101\u001a\u00020\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0010H\u0007J\u001b\u00103\u001a\u0004\u0018\u00010\u00192\u0008\u00102\u001a\u0004\u0018\u00010\rH\u0004\u00a2\u0006\u0004\u00083\u00104J\n\u00105\u001a\u0004\u0018\u00010\u0019H\u0004J\u001e\u00108\u001a\u00020\u00032\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0003\u0018\u000106H\u0016J\u0008\u00109\u001a\u00020\u0003H\u0016J\"\u0010>\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u00072\u0008\u0010=\u001a\u0004\u0018\u00010<H\u0016R\u0018\u0010A\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010J\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010GR\u0016\u0010L\u001a\u00020,8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008K\u0010@R\u0016\u0010N\u001a\u00020,8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008M\u0010@R\u0018\u0010P\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010@R\u0018\u0010R\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010GR\u0018\u0010S\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u0010GR\u0018\u0010T\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010@R\u0018\u0010U\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010GR\u0018\u0010W\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010GR\u0018\u0010Y\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010@R\u0018\u0010]\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0018\u0010_\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010\\R\u0018\u0010a\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010@R\u0018\u0010c\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010GR\u0018\u0010e\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010@R\u0018\u0010i\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0018\u0010m\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0018\u0010o\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010lR\u0018\u0010q\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010lR\u0018\u0010t\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0018\u0010v\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010GR\u0018\u0010x\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010GR\u0018\u0010z\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010sR\u0018\u0010|\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010GR\u0018\u0010~\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010sR\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u007f\u0010GR\u001a\u0010\u0082\u0001\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010sR\u001a\u0010\u0084\u0001\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010sR\u001c\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u001a\u0010\u008a\u0001\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010sR\u001a\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010GR\u001a\u0010\u008e\u0001\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008d\u0001\u0010sR\u001c\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u008f\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u001a\u0010\u0094\u0001\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0093\u0001\u0010sR\u001a\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0095\u0001\u0010GR\u0019\u0010\u0098\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u008d\u0001R\u0019\u0010\u009a\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u008d\u0001R\u0019\u0010\u009d\u0001\u001a\u00030\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009c\u0001\u0010^R\u0019\u0010\u009f\u0001\u001a\u00030\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009e\u0001\u0010^R\u0019\u0010\u00a1\u0001\u001a\u00030\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a0\u0001\u0010^R\u0019\u0010\u00a3\u0001\u001a\u00030\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a2\u0001\u0010^R\u0019\u0010\u00a5\u0001\u001a\u00030\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a4\u0001\u0010^R\u0019\u0010\u00a7\u0001\u001a\u00030\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a6\u0001\u0010^R\u0019\u0010\u00a9\u0001\u001a\u00030\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a8\u0001\u0010^R\u0019\u0010\u00ab\u0001\u001a\u00030\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00aa\u0001\u0010^R\u0019\u0010\u00ad\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u008d\u0001R\u0019\u0010\u00af\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u008d\u0001R\u001c\u0010\u00b3\u0001\u001a\u0005\u0018\u00010\u00b0\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u001c\u0010\u00b7\u0001\u001a\u0005\u0018\u00010\u00b4\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R\u001c\u0010\u00bb\u0001\u001a\u0005\u0018\u00010\u00b8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R\u001c\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00bc\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bd\u0001\u0010\u00be\u0001R\u001c\u0010\u00c1\u0001\u001a\u0005\u0018\u00010\u00bc\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c0\u0001\u0010\u00be\u0001R\u001b\u0010\u00c4\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001R\u0019\u0010\u00c7\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001R\u0019\u0010\u00c9\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u008d\u0001R\u0017\u0010\u00cc\u0001\u001a\u00020\t8TX\u0094\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001\u00a8\u0006\u00d0\u0001"
    }
    d2 = {
        "Lcom/android/calendar/event/v2/AgendaEventInfoFragment;",
        "Lcom/android/calendar/event/v2/BaseEventInfoFragment;",
        "Lcom/android/calendar/common/event/schema/AgendaEvent;",
        "Lkotlin/u;",
        "g1",
        "e1",
        "B0",
        "",
        "status",
        "",
        "c1",
        "event",
        "x0",
        "",
        "attendeeId",
        "i1",
        "Lcom/miui/calendar/util/g$s;",
        "d1",
        "editReminderDoneEvent",
        "Z0",
        "needForceSave",
        "b1",
        "h1",
        "Landroid/widget/TextView;",
        "textView",
        "",
        "str",
        "width",
        "y0",
        "(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "onResume",
        "onPause",
        "eventId",
        "C0",
        "O0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "isVisible",
        "y",
        "onDestroy",
        "onEventMainThread",
        "originEventId",
        "A0",
        "(Ljava/lang/Long;)Ljava/lang/String;",
        "z0",
        "Lkotlin/Function1;",
        "deleteCallback",
        "w",
        "x",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "l",
        "Landroid/view/View;",
        "rootView",
        "Landroid/widget/FrameLayout;",
        "m",
        "Landroid/widget/FrameLayout;",
        "cardView",
        "n",
        "Landroid/widget/TextView;",
        "titleShortTextView",
        "o",
        "titleFullTextView",
        "p",
        "titleFullTextViewFl",
        "q",
        "fullDateLocationFl",
        "r",
        "eventInfoDetailContainer",
        "v",
        "locationShortTextView",
        "datetimeShortTextView",
        "datetimeAndLocationShort",
        "locationFullTextView",
        "z",
        "datetimeFullTextView",
        "D",
        "datetimeAndLocationFull",
        "Landroid/widget/ImageView;",
        "E",
        "Landroid/widget/ImageView;",
        "locationShortImageView",
        "F",
        "locationFullImageView",
        "G",
        "cardBottomMask",
        "H",
        "thirdPartyV2LinkTextView",
        "I",
        "headContainer",
        "Landroid/widget/RadioGroup;",
        "J",
        "Landroid/widget/RadioGroup;",
        "responseRadioGroup",
        "Landroid/view/ViewStub;",
        "K",
        "Landroid/view/ViewStub;",
        "responseRadioGroupVs",
        "L",
        "fullDateLocationVs",
        "M",
        "fullTextVs",
        "N",
        "Landroid/view/ViewGroup;",
        "descriptionContainer",
        "O",
        "descriptionTextView",
        "P",
        "expandCollapseTextView",
        "Q",
        "repeatContainer",
        "R",
        "repeatStartTextView",
        "S",
        "repeatEndContainer",
        "T",
        "repeatEndTextView",
        "U",
        "repeatStartContainer",
        "V",
        "calendarContainer",
        "Lmiuix/appcompat/widget/Spinner;",
        "W",
        "Lmiuix/appcompat/widget/Spinner;",
        "calendarSpinner",
        "X",
        "reminderContainer",
        "Y",
        "reminderTextView",
        "Z",
        "alarmContainer",
        "Lmiuix/slidingwidget/widget/SlidingButton;",
        "a0",
        "Lmiuix/slidingwidget/widget/SlidingButton;",
        "alarmSlidingButton",
        "b0",
        "attendeesContainer",
        "c0",
        "attendeesTextView",
        "d0",
        "hasAttendee",
        "e0",
        "isRepeating",
        "",
        "f0",
        "titleShortDoubleLineHeight",
        "g0",
        "datetimeShortTranslateY",
        "h0",
        "titleShortSingleLineHeight",
        "i0",
        "datetimeShortSingleLineTranslateY",
        "j0",
        "titleTranslateY",
        "k0",
        "datetimeTranslateY",
        "l0",
        "titleSingleLineTextSize",
        "m0",
        "titleDoubleLineTextSize",
        "n0",
        "isFull",
        "o0",
        "isPaused",
        "Lcom/android/calendar/event/l;",
        "p0",
        "Lcom/android/calendar/event/l;",
        "editResponseHelper",
        "Lcom/android/calendar/event/b;",
        "q0",
        "Lcom/android/calendar/event/b;",
        "deleteEventHelper",
        "Landroid/database/MatrixCursor;",
        "r0",
        "Landroid/database/MatrixCursor;",
        "calendarCursor",
        "Lkotlinx/coroutines/s1;",
        "s0",
        "Lkotlinx/coroutines/s1;",
        "mJob",
        "t0",
        "mEllipsizedJob",
        "u0",
        "Lcom/android/calendar/common/event/schema/AgendaEvent;",
        "mAgendaEvent",
        "v0",
        "Ljava/lang/String;",
        "mDisplayedDatetime",
        "w0",
        "mFullTitleViewInit",
        "s",
        "()Z",
        "needRefreshOnResume",
        "<init>",
        "()V",
        "a",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final y0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment$a;


# instance fields
.field private D:Landroid/view/View;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/view/View;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/RadioGroup;

.field private K:Landroid/view/ViewStub;

.field private L:Landroid/view/ViewStub;

.field private M:Landroid/view/ViewStub;

.field private N:Landroid/view/ViewGroup;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/view/ViewGroup;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/view/ViewGroup;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/view/ViewGroup;

.field private V:Landroid/view/ViewGroup;

.field private W:Lmiuix/appcompat/widget/Spinner;

.field private X:Landroid/view/ViewGroup;

.field private Y:Landroid/widget/TextView;

.field private Z:Landroid/view/ViewGroup;

.field private a0:Lmiuix/slidingwidget/widget/SlidingButton;

.field private b0:Landroid/view/ViewGroup;

.field private c0:Landroid/widget/TextView;

.field private d0:Z

.field private e0:Z

.field private f0:F

.field private g0:F

.field private h0:F

.field private i0:F

.field private j0:F

.field private k0:F

.field private l:Landroid/view/View;

.field private l0:F

.field private m:Landroid/widget/FrameLayout;

.field private m0:F

.field private n:Landroid/widget/TextView;

.field private n0:Z

.field private o:Landroid/widget/TextView;

.field private o0:Z

.field private p:Landroid/view/View;

.field private p0:Lcom/android/calendar/event/l;

.field private q:Landroid/view/View;

.field private q0:Lcom/android/calendar/event/b;

.field private r:Landroid/view/View;

.field private r0:Landroid/database/MatrixCursor;

.field private s0:Lkotlinx/coroutines/s1;

.field private t0:Lkotlinx/coroutines/s1;

.field private u0:Lcom/android/calendar/common/event/schema/AgendaEvent;

.field private v:Landroid/widget/TextView;

.field private v0:Ljava/lang/String;

.field private w:Landroid/widget/TextView;

.field private w0:Z

.field private x:Landroid/view/View;

.field public x0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->y0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->x0:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o0:Z

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->v0:Ljava/lang/String;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private final B0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->u0:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->L:Landroid/view/ViewStub;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->L:Landroid/view/ViewStub;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-object v0, v1

    .line 29
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->M:Landroid/view/ViewStub;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    move-object v2, v1

    .line 39
    :goto_2
    if-eqz v2, :cond_4

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->M:Landroid/view/ViewStub;

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_3

    .line 50
    :cond_4
    move-object v2, v1

    .line 51
    :goto_3
    if-eqz v0, :cond_19

    .line 52
    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    goto/16 :goto_e

    .line 56
    .line 57
    :cond_5
    const v3, 0x7f0a01e3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v3, "dateLocation.findViewByI\u2026atetime_location_full_fl)"

    .line 65
    .line 66
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q:Landroid/view/View;

    .line 70
    .line 71
    const v0, 0x7f0a01e4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v2, "fullTextView.findViewByI\u2026me_location_full_text_fl)"

    .line 79
    .line 80
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->p:Landroid/view/View;

    .line 84
    .line 85
    const-string v2, "titleFullTextViewFl"

    .line 86
    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    move-object v0, v1

    .line 93
    :cond_6
    const v3, 0x7f0a0696

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o:Landroid/widget/TextView;

    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q:Landroid/view/View;

    .line 105
    .line 106
    const-string v3, "fullDateLocationFl"

    .line 107
    .line 108
    if-nez v0, :cond_7

    .line 109
    .line 110
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v0, v1

    .line 114
    :cond_7
    const v4, 0x7f0a0677

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroid/widget/TextView;

    .line 122
    .line 123
    iput-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->y:Landroid/widget/TextView;

    .line 124
    .line 125
    const v4, 0x7f0a066e

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->z:Landroid/widget/TextView;

    .line 135
    .line 136
    const v4, 0x7f0a01e2

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    iput-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->D:Landroid/view/View;

    .line 144
    .line 145
    const v4, 0x7f0a0357

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Landroid/widget/ImageView;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->F:Landroid/widget/ImageView;

    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n:Landroid/widget/TextView;

    .line 157
    .line 158
    const/4 v4, 0x1

    .line 159
    const/4 v5, 0x0

    .line 160
    if-eqz v0, :cond_b

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iget-object v7, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->u0:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 167
    .line 168
    invoke-static {v7}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    int-to-float v0, v0

    .line 184
    cmpg-float v0, v6, v0

    .line 185
    .line 186
    if-gtz v0, :cond_8

    .line 187
    .line 188
    move v0, v4

    .line 189
    goto :goto_4

    .line 190
    :cond_8
    move v0, v5

    .line 191
    :goto_4
    iget-object v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->x:Landroid/view/View;

    .line 192
    .line 193
    if-nez v6, :cond_9

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_9
    iget v7, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0:F

    .line 197
    .line 198
    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 199
    .line 200
    .line 201
    :goto_5
    if-eqz v0, :cond_a

    .line 202
    .line 203
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o:Landroid/widget/TextView;

    .line 204
    .line 205
    if-eqz v0, :cond_b

    .line 206
    .line 207
    iget v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->l0:F

    .line 208
    .line 209
    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 210
    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o:Landroid/widget/TextView;

    .line 214
    .line 215
    if-eqz v0, :cond_b

    .line 216
    .line 217
    iget v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->m0:F

    .line 218
    .line 219
    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 220
    .line 221
    .line 222
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o:Landroid/widget/TextView;

    .line 223
    .line 224
    if-nez v0, :cond_c

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_c
    iget-object v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->u0:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 228
    .line 229
    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    :goto_7
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->u0:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 240
    .line 241
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_f

    .line 253
    .line 254
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->y:Landroid/widget/TextView;

    .line 255
    .line 256
    const/16 v5, 0x8

    .line 257
    .line 258
    if-nez v0, :cond_d

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_d
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :goto_8
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->F:Landroid/widget/ImageView;

    .line 265
    .line 266
    if-nez v0, :cond_e

    .line 267
    .line 268
    goto :goto_b

    .line 269
    :cond_e
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    goto :goto_b

    .line 273
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->y:Landroid/widget/TextView;

    .line 274
    .line 275
    if-nez v0, :cond_10

    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_10
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    :goto_9
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->F:Landroid/widget/ImageView;

    .line 282
    .line 283
    if-nez v0, :cond_11

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_11
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    :goto_a
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->y:Landroid/widget/TextView;

    .line 290
    .line 291
    if-nez v0, :cond_12

    .line 292
    .line 293
    goto :goto_b

    .line 294
    :cond_12
    iget-object v5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->u0:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 295
    .line 296
    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .line 305
    .line 306
    :goto_b
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->p:Landroid/view/View;

    .line 307
    .line 308
    if-nez v0, :cond_13

    .line 309
    .line 310
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    move-object v0, v1

    .line 314
    :cond_13
    iget v5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->f0:F

    .line 315
    .line 316
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->p:Landroid/view/View;

    .line 320
    .line 321
    if-nez v0, :cond_14

    .line 322
    .line 323
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    move-object v0, v1

    .line 327
    :cond_14
    const/4 v2, 0x0

    .line 328
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->v0:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-nez v0, :cond_16

    .line 338
    .line 339
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->z:Landroid/widget/TextView;

    .line 340
    .line 341
    if-nez v0, :cond_15

    .line 342
    .line 343
    goto :goto_c

    .line 344
    :cond_15
    iget-object v5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->v0:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    :cond_16
    :goto_c
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q:Landroid/view/View;

    .line 350
    .line 351
    if-nez v0, :cond_17

    .line 352
    .line 353
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    move-object v0, v1

    .line 357
    :cond_17
    iget v5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->g0:F

    .line 358
    .line 359
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q:Landroid/view/View;

    .line 363
    .line 364
    if-nez v0, :cond_18

    .line 365
    .line 366
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    goto :goto_d

    .line 370
    :cond_18
    move-object v1, v0

    .line 371
    :goto_d
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 372
    .line 373
    .line 374
    iput-boolean v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->w0:Z

    .line 375
    .line 376
    :cond_19
    :goto_e
    return-void
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method private static final D0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->k()V

    .line 7
    .line 8
    .line 9
    return-void
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

.method private static final E0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean p1, Lcom/miui/calendar/util/n;->c:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n0:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->g1()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->e1()V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-boolean p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n0:Z

    .line 23
    .line 24
    xor-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n0:Z

    .line 27
    .line 28
    return-void
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

.method private static final F0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic G(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->G0(Landroid/view/View;)V

    return-void
.end method

.method private static final G0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic H(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->I0(Landroid/view/View;)V

    return-void
.end method

.method private static final H0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic I(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lw7/l;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->N0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lw7/l;I)V

    return-void
.end method

.method private static final I0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic J(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->f1(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    return-void
.end method

.method private static final J0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic K(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Q0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V

    return-void
.end method

.method private static final K0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->a0:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->performClick()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
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

.method public static synthetic L(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->M0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final L0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
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

.method public static synthetic M(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->T0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V

    return-void
.end method

.method private static final M0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->z(Z)V

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
.end method

.method public static synthetic N(Lcom/android/calendar/common/event/schema/AgendaEvent;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->P0(Lcom/android/calendar/common/event/schema/AgendaEvent;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static final N0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lw7/l;I)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o0:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->z(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p1, p0}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
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

.method public static synthetic O(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->J0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->U0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method private static final P0(Lcom/android/calendar/common/event/schema/AgendaEvent;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/widget/CompoundButton;Z)V
    .locals 8

    .line 1
    const-string p2, "$event"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "this$0"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-ne p3, p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_4

    .line 23
    .line 24
    iget-boolean v0, p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->e0:Z

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getStartMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalStart(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getStartMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalEnd(J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->t()Lcom/android/calendar/common/event/schema/Event;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getStartMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    cmp-long v2, v4, v6

    .line 76
    .line 77
    if-nez v2, :cond_1

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setFirstEventInSeries(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getStartMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setStart(J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEndMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setEnd(J)V

    .line 95
    .line 96
    .line 97
    :cond_2
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setRrule(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "withAppendedId(Events.CONTENT_URI, event.id)"

    .line 112
    .line 113
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setUri(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Lcom/android/calendar/event/i;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->t()Lcom/android/calendar/common/event/schema/Event;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {v0, p2, p0, v1}, Lcom/android/calendar/event/i;-><init>(Landroid/app/Activity;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/event/schema/Event;)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2;

    .line 133
    .line 134
    invoke-direct {v1, p1, p2, p0, p3}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroidx/fragment/app/d;Lcom/android/calendar/common/event/schema/AgendaEvent;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p3, v1}, Lcom/android/calendar/event/i;->f(ZLcom/android/calendar/event/i$c;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 142
    .line 143
    .line 144
    invoke-static {p2, p0}, Lcom/android/calendar/event/i;->h(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_0
    return-void
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method public static synthetic Q(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->F0(Landroid/view/View;)V

    return-void
.end method

.method private static final Q0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$event"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-class v1, Lcom/android/calendar/event/AttendeesActivity;

    .line 18
    .line 19
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "extra_event"

    .line 23
    .line 24
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    return-void
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

.method public static synthetic R(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->R0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V

    return-void
.end method

.method private static final R0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 6

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$event"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPData()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPData2()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/miui/calendar/thirdparty/d;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
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

.method public static synthetic S(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->D0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final S0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 6

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$event"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPData()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPData2()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/miui/calendar/thirdparty/d;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
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

.method public static synthetic T(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->L0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final T0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$event"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Lcom/miui/calendar/thirdparty/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
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

.method public static synthetic U(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->X0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V

    return-void
.end method

.method private static final U0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/widget/RadioGroup;I)V
    .locals 4

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$event"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->J:Landroid/widget/RadioGroup;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    const p3, 0x7f0a04c5

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ne v2, p3, :cond_2

    .line 38
    .line 39
    move p2, v0

    .line 40
    goto :goto_4

    .line 41
    :cond_2
    :goto_1
    const p3, 0x7f0a04c3

    .line 42
    .line 43
    .line 44
    if-nez p2, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ne v2, p3, :cond_4

    .line 52
    .line 53
    const/4 p2, 0x4

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    :goto_2
    const p3, 0x7f0a04c4

    .line 56
    .line 57
    .line 58
    if-nez p2, :cond_5

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-ne p2, p3, :cond_6

    .line 66
    .line 67
    const/4 p2, 0x2

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    :goto_3
    move p2, v1

    .line 70
    :goto_4
    if-nez p2, :cond_7

    .line 71
    .line 72
    return-void

    .line 73
    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->t()Lcom/android/calendar/common/event/schema/Event;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    check-cast p3, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 78
    .line 79
    if-eqz p3, :cond_8

    .line 80
    .line 81
    invoke-virtual {p3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    if-eqz p3, :cond_8

    .line 86
    .line 87
    invoke-virtual {p3}, Lcom/android/calendar/common/event/schema/EventEx;->getSelfAttendeeStatus()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-ne p2, p3, :cond_8

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_8
    move v0, v1

    .line 95
    :goto_5
    if-eqz v0, :cond_9

    .line 96
    .line 97
    return-void

    .line 98
    :cond_9
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendarOwnerAttendeeId()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    const-wide/16 v2, -0x1

    .line 103
    .line 104
    cmp-long p3, v0, v2

    .line 105
    .line 106
    if-nez p3, :cond_a

    .line 107
    .line 108
    return-void

    .line 109
    :cond_a
    iget-boolean p3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->e0:Z

    .line 110
    .line 111
    if-eqz p3, :cond_b

    .line 112
    .line 113
    iget-object p3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->p0:Lcom/android/calendar/event/l;

    .line 114
    .line 115
    if-eqz p3, :cond_c

    .line 116
    .line 117
    new-instance v0, Lcom/android/calendar/event/v2/o;

    .line 118
    .line 119
    invoke-direct {v0, p0, p2, p1}, Lcom/android/calendar/event/v2/o;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;ILcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, v0}, Lcom/android/calendar/event/l;->d(Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Lcom/android/calendar/event/l;->c()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    invoke-virtual {p3, p0}, Lcom/android/calendar/event/l;->f(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->c1(I)Z

    .line 134
    .line 135
    .line 136
    :cond_c
    :goto_6
    return-void
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method public static synthetic V(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->a1(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    return-void
.end method

.method private static final V0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;ILcom/android/calendar/common/event/schema/AgendaEvent;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    const-string p3, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "$event"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p3, -0x2

    .line 12
    const/4 v0, -0x1

    .line 13
    if-eq p4, p3, :cond_1

    .line 14
    .line 15
    if-eq p4, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->c1(I)Z

    .line 20
    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p3, 0x0

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getAttendeeResponse()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move-object p1, p3

    .line 41
    :goto_0
    const/4 p4, 0x1

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getAttendeeResponse()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    move v1, p4

    .line 58
    :cond_3
    if-nez v1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getAttendeeResponse()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getAttendeeResponse()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    :cond_5
    :goto_1
    if-nez p3, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-ne p1, p4, :cond_7

    .line 91
    .line 92
    const v0, 0x7f0a04c5

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_7
    :goto_2
    const/4 p1, 0x4

    .line 97
    if-nez p3, :cond_8

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_8
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-ne p2, p1, :cond_9

    .line 105
    .line 106
    const v0, 0x7f0a04c3

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_9
    :goto_3
    const/4 p1, 0x2

    .line 111
    if-nez p3, :cond_a

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_a
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-ne p2, p1, :cond_b

    .line 119
    .line 120
    const v0, 0x7f0a04c4

    .line 121
    .line 122
    .line 123
    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->J:Landroid/widget/RadioGroup;

    .line 124
    .line 125
    if-eqz p0, :cond_c

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 128
    .line 129
    .line 130
    :cond_c
    :goto_5
    return-void
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
.end method

.method public static synthetic W(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;ILcom/android/calendar/common/event/schema/AgendaEvent;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->V0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;ILcom/android/calendar/common/event/schema/AgendaEvent;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final W0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V
    .locals 7

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$event"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v4, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p0, p1, v0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Lkotlin/coroutines/c;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v5, 0x3

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->t0:Lkotlinx/coroutines/s1;

    .line 34
    .line 35
    return-void
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

.method public static synthetic X(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Y0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V

    return-void
.end method

.method private static final X0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$event"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->O:Landroid/widget/TextView;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getDescription()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->P:Landroid/widget/TextView;

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 p1, 0x8

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :goto_1
    return-void
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

.method public static synthetic Y(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->S0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V

    return-void
.end method

.method private static final Y0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Landroid/view/View;)V
    .locals 4

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$event"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    .line 22
    const-class v1, Lcom/android/calendar/event/NewEditReminderActivity;

    .line 23
    .line 24
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    new-instance p2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/calendar/common/event/schema/Reminder;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Reminder;->getMinutes()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    const-string v3, "extra_event_id"

    .line 73
    .line 74
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    const-string v1, "extra_reminders"

    .line 78
    .line 79
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const-string v1, "extra_allday"

    .line 87
    .line 88
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarMaxReminders()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const-string p2, "extra_max_reminders"

    .line 100
    .line 101
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    return-void
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method public static synthetic Z(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H0(Landroid/view/View;)V

    return-void
.end method

.method private final Z0(Lcom/miui/calendar/util/g$s;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p1, Lcom/miui/calendar/util/g$s;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setReminders(Ljava/util/ArrayList;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Y:Landroid/widget/TextView;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object p1, p1, Lcom/miui/calendar/util/g$s;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {v1, p1, v2}, Lcom/android/calendar/event/f0;->b(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->h1()V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->b1(Z)Z

    .line 52
    .line 53
    .line 54
    return-void
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

.method public static synthetic a0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->K0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final a1(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->I:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic b0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->E0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/view/View;)V

    return-void
.end method

.method private final b1(Z)Z
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->t()Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->t()Lcom/android/calendar/common/event/schema/Event;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 17
    .line 18
    new-instance v8, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v0, "originalReminders"

    .line 47
    .line 48
    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v6}, Lkotlin/collections/t;->y(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "reminders"

    .line 55
    .line 56
    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v5}, Lkotlin/collections/t;->y(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    move-object v2, v8

    .line 73
    move/from16 v7, p1

    .line 74
    .line 75
    invoke-static/range {v2 .. v7}, Lcom/android/calendar/event/j;->q(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    return v1

    .line 82
    :cond_1
    new-instance v9, Lcom/android/calendar/common/a;

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object/from16 v15, p0

    .line 89
    .line 90
    invoke-direct {v9, v0, v15}, Lcom/android/calendar/common/a;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v4, 0x0

    .line 95
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    const-wide/16 v10, 0x0

    .line 102
    .line 103
    move-object v2, v9

    .line 104
    move-object v6, v8

    .line 105
    move-wide v7, v10

    .line 106
    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/common/a;->m(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 110
    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    const-string v0, "withAppendedId(Events.CONTENT_URI, event.id)"

    .line 126
    .line 127
    invoke-static {v12, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    const/4 v2, 0x1

    .line 149
    if-lez v0, :cond_2

    .line 150
    .line 151
    move v1, v2

    .line 152
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->hasAlarm()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eq v1, v0, :cond_3

    .line 167
    .line 168
    new-instance v13, Landroid/content/ContentValues;

    .line 169
    .line 170
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v1, "hasAlarm"

    .line 178
    .line 179
    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    .line 181
    .line 182
    const/4 v10, 0x0

    .line 183
    const/4 v11, 0x0

    .line 184
    const/4 v14, 0x0

    .line 185
    const/4 v0, 0x0

    .line 186
    const-wide/16 v16, 0x0

    .line 187
    .line 188
    move-object v15, v0

    .line 189
    invoke-virtual/range {v9 .. v17}, Lcom/android/calendar/common/a;->q(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 190
    .line 191
    .line 192
    :cond_3
    return v2
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public static synthetic c0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->W0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    return-void
.end method

.method private final c1(I)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->t()Lcom/android/calendar/common/event/schema/Event;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getSelfAttendeeStatus()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, v0

    .line 29
    :goto_0
    if-eqz v1, :cond_2

    .line 30
    .line 31
    return v0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendarOwnerAttendeeId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    const-wide/16 v5, -0x1

    .line 43
    .line 44
    cmp-long v1, v3, v5

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    return v0

    .line 49
    :cond_3
    iget-boolean v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->e0:Z

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendarOwnerAttendeeId()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->i1(Lcom/android/calendar/common/event/schema/AgendaEvent;JI)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->p0:Lcom/android/calendar/event/l;

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/android/calendar/event/l;->c()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/4 v1, 0x0

    .line 87
    :goto_1
    const/4 v3, -0x1

    .line 88
    if-nez v1, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ne v4, v3, :cond_7

    .line 96
    .line 97
    return v0

    .line 98
    :cond_7
    :goto_2
    if-nez v1, :cond_8

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_9

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 112
    .line 113
    invoke-direct {p0, v0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->x0(Lcom/android/calendar/common/event/schema/AgendaEvent;I)V

    .line 114
    .line 115
    .line 116
    return v2

    .line 117
    :cond_9
    :goto_3
    if-nez v1, :cond_a

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ne v1, v2, :cond_b

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendarOwnerAttendeeId()J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->i1(Lcom/android/calendar/common/event/schema/AgendaEvent;JI)V

    .line 143
    .line 144
    .line 145
    return v2

    .line 146
    :cond_b
    :goto_4
    const-string p1, "Cal:D:AgendaEventInfoFragment"

    .line 147
    .line 148
    const-string v1, "Unexpected choice for updating invitation response"

    .line 149
    .line 150
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    return v0
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public static final synthetic d0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->y0(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method private final d1(Lcom/miui/calendar/util/g$s;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$b;

    .line 13
    .line 14
    invoke-direct {v1, p1, p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$b;-><init>(Lcom/miui/calendar/util/g$s;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lo1/i;->k(Landroid/content/Context;Lo1/i$d;)V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method public static final synthetic e0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->a0:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method private final e1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->B0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->G:Landroid/view/View;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o:Landroid/widget/TextView;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->m:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->D:Landroid/view/View;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v1, Lcom/android/calendar/event/v2/k;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/android/calendar/event/v2/k;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_1
    return-void
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

.method public static final synthetic f0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->V:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method private static final f1(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V
    .locals 15

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->m:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->D:Landroid/view/View;

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sub-int/2addr v0, v1

    .line 35
    const/4 v1, 0x2

    .line 36
    div-int/2addr v0, v1

    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v3, v2, [Landroid/view/View;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n:Landroid/widget/TextView;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    aput-object v4, v3, v5

    .line 44
    .line 45
    invoke-static {v3}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v3}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "end"

    .line 54
    .line 55
    invoke-interface {v3, v4}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget-object v6, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 60
    .line 61
    invoke-interface {v3, v6, v5}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    sget-object v7, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 66
    .line 67
    invoke-interface {v3, v7, v0}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-array v8, v1, [Ld9/a;

    .line 72
    .line 73
    new-instance v9, Ld9/a;

    .line 74
    .line 75
    invoke-direct {v9}, Ld9/a;-><init>()V

    .line 76
    .line 77
    .line 78
    new-array v10, v5, [F

    .line 79
    .line 80
    const-wide/16 v11, 0x0

    .line 81
    .line 82
    invoke-virtual {v9, v7, v11, v12, v10}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    const/4 v10, 0x3

    .line 87
    new-array v13, v10, [F

    .line 88
    .line 89
    fill-array-data v13, :array_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9, v5, v13}, Ld9/a;->k(I[F)Ld9/a;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    aput-object v9, v8, v5

    .line 97
    .line 98
    new-instance v9, Ld9/a;

    .line 99
    .line 100
    invoke-direct {v9}, Ld9/a;-><init>()V

    .line 101
    .line 102
    .line 103
    aput-object v9, v8, v2

    .line 104
    .line 105
    invoke-interface {v3, v4, v8}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 106
    .line 107
    .line 108
    new-array v3, v2, [Landroid/view/View;

    .line 109
    .line 110
    iget-object v8, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->p:Landroid/view/View;

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    if-nez v8, :cond_0

    .line 114
    .line 115
    const-string v8, "titleFullTextViewFl"

    .line 116
    .line 117
    invoke-static {v8}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    move-object v8, v9

    .line 121
    :cond_0
    aput-object v8, v3, v5

    .line 122
    .line 123
    invoke-static {v3}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-interface {v3}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-interface {v3, v4}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-interface {v3, v6, v2}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-interface {v3, v7, v0}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    new-array v8, v1, [Ld9/a;

    .line 144
    .line 145
    new-instance v13, Ld9/a;

    .line 146
    .line 147
    invoke-direct {v13}, Ld9/a;-><init>()V

    .line 148
    .line 149
    .line 150
    new-array v14, v5, [F

    .line 151
    .line 152
    invoke-virtual {v13, v7, v11, v12, v14}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    new-array v14, v10, [F

    .line 157
    .line 158
    fill-array-data v14, :array_1

    .line 159
    .line 160
    .line 161
    invoke-virtual {v13, v5, v14}, Ld9/a;->k(I[F)Ld9/a;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    aput-object v13, v8, v5

    .line 166
    .line 167
    new-instance v13, Ld9/a;

    .line 168
    .line 169
    invoke-direct {v13}, Ld9/a;-><init>()V

    .line 170
    .line 171
    .line 172
    aput-object v13, v8, v2

    .line 173
    .line 174
    invoke-interface {v3, v4, v8}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o:Landroid/widget/TextView;

    .line 178
    .line 179
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    add-int/2addr v0, v3

    .line 187
    new-array v3, v2, [Landroid/view/View;

    .line 188
    .line 189
    iget-object v8, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->x:Landroid/view/View;

    .line 190
    .line 191
    aput-object v8, v3, v5

    .line 192
    .line 193
    invoke-static {v3}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-interface {v3}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-interface {v3, v4}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-interface {v3, v6, v5}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-interface {v3, v7, v0}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    new-array v8, v1, [Ld9/a;

    .line 214
    .line 215
    new-instance v13, Ld9/a;

    .line 216
    .line 217
    invoke-direct {v13}, Ld9/a;-><init>()V

    .line 218
    .line 219
    .line 220
    new-array v14, v5, [F

    .line 221
    .line 222
    invoke-virtual {v13, v7, v11, v12, v14}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    new-array v14, v10, [F

    .line 227
    .line 228
    fill-array-data v14, :array_2

    .line 229
    .line 230
    .line 231
    invoke-virtual {v13, v5, v14}, Ld9/a;->k(I[F)Ld9/a;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    aput-object v13, v8, v5

    .line 236
    .line 237
    new-instance v13, Ld9/a;

    .line 238
    .line 239
    invoke-direct {v13}, Ld9/a;-><init>()V

    .line 240
    .line 241
    .line 242
    aput-object v13, v8, v2

    .line 243
    .line 244
    invoke-interface {v3, v4, v8}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 245
    .line 246
    .line 247
    new-array v3, v2, [Landroid/view/View;

    .line 248
    .line 249
    iget-object v8, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q:Landroid/view/View;

    .line 250
    .line 251
    if-nez v8, :cond_1

    .line 252
    .line 253
    const-string v8, "fullDateLocationFl"

    .line 254
    .line 255
    invoke-static {v8}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    move-object v8, v9

    .line 259
    :cond_1
    aput-object v8, v3, v5

    .line 260
    .line 261
    invoke-static {v3}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-interface {v3}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-interface {v3, v4}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-interface {v3, v6, v2}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-interface {v3, v7, v0}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    new-array v3, v1, [Ld9/a;

    .line 282
    .line 283
    new-instance v6, Ld9/a;

    .line 284
    .line 285
    invoke-direct {v6}, Ld9/a;-><init>()V

    .line 286
    .line 287
    .line 288
    new-array v8, v5, [F

    .line 289
    .line 290
    invoke-virtual {v6, v7, v11, v12, v8}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    new-array v8, v10, [F

    .line 295
    .line 296
    fill-array-data v8, :array_3

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6, v5, v8}, Ld9/a;->k(I[F)Ld9/a;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    aput-object v6, v3, v5

    .line 304
    .line 305
    new-instance v6, Ld9/a;

    .line 306
    .line 307
    invoke-direct {v6}, Ld9/a;-><init>()V

    .line 308
    .line 309
    .line 310
    aput-object v6, v3, v2

    .line 311
    .line 312
    invoke-interface {v0, v4, v3}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 313
    .line 314
    .line 315
    new-array v0, v2, [Landroid/view/View;

    .line 316
    .line 317
    iget-object v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->r:Landroid/view/View;

    .line 318
    .line 319
    aput-object v3, v0, v5

    .line 320
    .line 321
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-interface {v0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    new-array v3, v10, [Ljava/lang/Object;

    .line 330
    .line 331
    aput-object v7, v3, v5

    .line 332
    .line 333
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->r:Landroid/view/View;

    .line 334
    .line 335
    if-eqz p0, :cond_2

    .line 336
    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 338
    .line 339
    .line 340
    move-result p0

    .line 341
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    :cond_2
    aput-object v9, v3, v2

    .line 346
    .line 347
    new-instance p0, Ld9/a;

    .line 348
    .line 349
    invoke-direct {p0}, Ld9/a;-><init>()V

    .line 350
    .line 351
    .line 352
    new-array v2, v10, [F

    .line 353
    .line 354
    fill-array-data v2, :array_4

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, v5, v2}, Ld9/a;->k(I[F)Ld9/a;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    aput-object p0, v3, v1

    .line 362
    .line 363
    invoke-interface {v0, v3}, Lmiuix/animation/f;->I([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :array_0
    .array-data 4
        0x43fa0000    # 500.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_1
    .array-data 4
        0x43fa0000    # 500.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_2
    .array-data 4
        0x43fa0000    # 500.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_3
    .array-data 4
        0x43fa0000    # 500.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_4
    .array-data 4
        0x43fa0000    # 500.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
    .end array-data
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public static final synthetic g0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/database/MatrixCursor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->r0:Landroid/database/MatrixCursor;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method private final g1()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->w0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->G:Landroid/view/View;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 v0, 0x1

    .line 16
    new-array v2, v0, [Landroid/view/View;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n:Landroid/widget/TextView;

    .line 19
    .line 20
    aput-object v3, v2, v1

    .line 21
    .line 22
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "end"

    .line 31
    .line 32
    invoke-interface {v2, v3}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v4, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 37
    .line 38
    invoke-interface {v2, v4, v0}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v5, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 43
    .line 44
    iget v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->j0:F

    .line 45
    .line 46
    invoke-interface {v2, v5, v6}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-array v6, v0, [Ld9/a;

    .line 51
    .line 52
    new-instance v7, Ld9/a;

    .line 53
    .line 54
    invoke-direct {v7}, Ld9/a;-><init>()V

    .line 55
    .line 56
    .line 57
    aput-object v7, v6, v1

    .line 58
    .line 59
    invoke-interface {v2, v3, v6}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 60
    .line 61
    .line 62
    new-array v2, v0, [Landroid/view/View;

    .line 63
    .line 64
    iget-object v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->p:Landroid/view/View;

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    const-string v6, "titleFullTextViewFl"

    .line 70
    .line 71
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v6, v7

    .line 75
    :cond_2
    aput-object v6, v2, v1

    .line 76
    .line 77
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {v2, v3}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-interface {v2, v4, v1}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->j0:F

    .line 94
    .line 95
    invoke-interface {v2, v5, v6}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-array v6, v0, [Ld9/a;

    .line 100
    .line 101
    new-instance v8, Ld9/a;

    .line 102
    .line 103
    invoke-direct {v8}, Ld9/a;-><init>()V

    .line 104
    .line 105
    .line 106
    aput-object v8, v6, v1

    .line 107
    .line 108
    invoke-interface {v2, v3, v6}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 109
    .line 110
    .line 111
    new-array v2, v0, [Landroid/view/View;

    .line 112
    .line 113
    iget-object v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->x:Landroid/view/View;

    .line 114
    .line 115
    aput-object v6, v2, v1

    .line 116
    .line 117
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v2}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-interface {v2, v3}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v2, v4, v0}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0:F

    .line 134
    .line 135
    invoke-interface {v2, v5, v6}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    new-array v6, v0, [Ld9/a;

    .line 140
    .line 141
    new-instance v8, Ld9/a;

    .line 142
    .line 143
    invoke-direct {v8}, Ld9/a;-><init>()V

    .line 144
    .line 145
    .line 146
    aput-object v8, v6, v1

    .line 147
    .line 148
    invoke-interface {v2, v3, v6}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 149
    .line 150
    .line 151
    new-array v2, v0, [Landroid/view/View;

    .line 152
    .line 153
    iget-object v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q:Landroid/view/View;

    .line 154
    .line 155
    if-nez v6, :cond_3

    .line 156
    .line 157
    const-string v6, "fullDateLocationFl"

    .line 158
    .line 159
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    move-object v7, v6

    .line 164
    :goto_1
    aput-object v7, v2, v1

    .line 165
    .line 166
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-interface {v2}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-interface {v2, v3}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-interface {v2, v4, v1}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    iget v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0:F

    .line 183
    .line 184
    invoke-interface {v2, v5, v4}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    new-array v4, v0, [Ld9/a;

    .line 189
    .line 190
    new-instance v6, Ld9/a;

    .line 191
    .line 192
    invoke-direct {v6}, Ld9/a;-><init>()V

    .line 193
    .line 194
    .line 195
    aput-object v6, v4, v1

    .line 196
    .line 197
    invoke-interface {v2, v3, v4}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 198
    .line 199
    .line 200
    new-array v2, v0, [Landroid/view/View;

    .line 201
    .line 202
    iget-object v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->r:Landroid/view/View;

    .line 203
    .line 204
    aput-object v3, v2, v1

    .line 205
    .line 206
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-interface {v2}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const/4 v3, 0x2

    .line 215
    new-array v3, v3, [Ljava/lang/Object;

    .line 216
    .line 217
    aput-object v5, v3, v1

    .line 218
    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    aput-object v1, v3, v0

    .line 224
    .line 225
    invoke-interface {v2, v3}, Lmiuix/animation/f;->I([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 226
    .line 227
    .line 228
    return-void
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public static final synthetic h0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Lmiuix/appcompat/widget/Spinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->W:Lmiuix/appcompat/widget/Spinner;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method private final h1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Z:Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Z:Landroid/view/ViewGroup;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/16 v1, 0x8

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
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

.method public static final synthetic i0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->w:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method private final i1(Lcom/android/calendar/common/event/schema/AgendaEvent;JI)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getOwnerAccount()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getOwnerAccount()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "attendeeEmail"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    const-string v1, "attendeeStatus"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p4, "event_id"

    .line 51
    .line 52
    invoke-virtual {v0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    .line 57
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "withAppendedId(Attendees.CONTENT_URI, attendeeId)"

    .line 62
    .line 63
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-eqz p2, :cond_1

    .line 77
    .line 78
    const/4 p3, 0x0

    .line 79
    invoke-virtual {p2, p1, v0, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
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

.method public static final synthetic j0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->O:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method public static final synthetic k0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->P:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method public static final synthetic l0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->d0:Z

    .line 2
    .line 3
    return p0
    .line 4
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

.method public static final synthetic m0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->I:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method public static final synthetic n0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Q:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method public static final synthetic o0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->S:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method public static final synthetic p0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->T:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method public static final synthetic q0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->R:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method public static final synthetic r0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->e0:Z

    .line 2
    .line 3
    return p0
    .line 4
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

.method public static final synthetic s0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/miui/calendar/util/g$s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Z0(Lcom/miui/calendar/util/g$s;)V

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

.method public static final synthetic t0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/database/MatrixCursor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->r0:Landroid/database/MatrixCursor;

    .line 2
    .line 3
    return-void
    .line 4
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

.method public static final synthetic u0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->v0:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
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

.method public static final synthetic v0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lkotlinx/coroutines/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->s0:Lkotlinx/coroutines/s1;

    .line 2
    .line 3
    return-void
    .line 4
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

.method public static final synthetic w0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->e0:Z

    .line 2
    .line 3
    return-void
    .line 4
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

.method private final x0(Lcom/android/calendar/common/event/schema/AgendaEvent;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "originalInstanceTime"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v1, "selfAttendeeStatus"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v1, "eventStatus"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    const-string v0, "com.android.calendar"

    .line 85
    .line 86
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 87
    .line 88
    .line 89
    :cond_0
    return-void
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method private final y0(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 15

    .line 1
    move-object/from16 v7, p2

    .line 2
    .line 3
    if-eqz p1, :cond_b

    .line 4
    .line 5
    if-eqz v7, :cond_b

    .line 6
    .line 7
    if-eqz p3, :cond_b

    .line 8
    .line 9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    const-string v0, "textView.paint"

    .line 22
    .line 23
    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v9, 0x3

    .line 35
    mul-int/2addr v1, v9

    .line 36
    int-to-float v1, v1

    .line 37
    cmpg-float v0, v0, v1

    .line 38
    .line 39
    if-gez v0, :cond_1

    .line 40
    .line 41
    return-object v7

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const v0, 0x7f120385

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    int-to-float v1, v1

    .line 63
    div-float/2addr v0, v1

    .line 64
    :cond_2
    move v10, v0

    .line 65
    new-instance v11, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    const/4 v12, 0x0

    .line 71
    move v13, v12

    .line 72
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const-string v14, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 77
    .line 78
    if-ge v13, v0, :cond_7

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "ellipsizeString end:"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, " str.length:"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "Cal:D:AgendaEventInfoFragment"

    .line 110
    .line 111
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    const/4 v4, 0x1

    .line 119
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    int-to-float v5, v0

    .line 124
    const/4 v6, 0x0

    .line 125
    move-object v0, v8

    .line 126
    move-object/from16 v1, p2

    .line 127
    .line 128
    move v2, v13

    .line 129
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    add-int/2addr v0, v13

    .line 137
    invoke-virtual {v7, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    invoke-static {v13, v14}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    const/4 v4, 0x0

    .line 146
    const/4 v5, 0x6

    .line 147
    const/4 v6, 0x0

    .line 148
    const-string v2, "\n"

    .line 149
    .line 150
    move-object v1, v13

    .line 151
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->U(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-ltz v1, :cond_4

    .line 156
    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 158
    .line 159
    invoke-virtual {v13, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v2, v14}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-ge v1, v2, :cond_5

    .line 174
    .line 175
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v1, v14}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_4
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    :cond_5
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-le v1, v9, :cond_6

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_6
    move v13, v0

    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_7
    :goto_2
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-gt v0, v9, :cond_8

    .line 208
    .line 209
    return-object v7

    .line 210
    :cond_8
    const/4 v0, 0x2

    .line 211
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Ljava/lang/String;

    .line 216
    .line 217
    new-instance v1, Lb8/c;

    .line 218
    .line 219
    const/4 v2, 0x1

    .line 220
    invoke-direct {v1, v12, v2}, Lb8/c;-><init>(II)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string v2, ""

    .line 228
    .line 229
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_9

    .line 234
    .line 235
    move-object v3, v1

    .line 236
    check-cast v3, Lkotlin/collections/j0;

    .line 237
    .line 238
    invoke-virtual {v3}, Lkotlin/collections/j0;->nextInt()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    goto :goto_3

    .line 264
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    int-to-float v2, v2

    .line 277
    cmpl-float v2, v2, v10

    .line 278
    .line 279
    const-string v3, "..."

    .line 280
    .line 281
    if-lez v2, :cond_a

    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    float-to-int v5, v10

    .line 293
    sub-int/2addr v4, v5

    .line 294
    invoke-virtual {v0, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {v0, v14}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    return-object v0

    .line 319
    :cond_b
    :goto_4
    const/4 v0, 0x0

    .line 320
    return-object v0
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method


# virtual methods
.method protected final A0(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->t()Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "original_id=?"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    new-array v2, v1, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v3, 0x0

    .line 46
    aput-object p1, v2, v3

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/p0;->o([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "_id"

    .line 53
    .line 54
    filled-new-array {v0}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-array v0, v1, [Ljava/lang/Class;

    .line 63
    .line 64
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    aput-object v1, v0, v3

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "_id DESC"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/p0;->q(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/miui/calendar/util/p0;->i()Lcom/miui/calendar/util/p0$b;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "connect(requireContext()\u2026\n                .query()"

    .line 83
    .line 84
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Lcom/miui/calendar/util/p0$b;->l(I)Lcom/miui/calendar/util/p0$c;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, v3}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 97
    return-object p1
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method protected C0(J)Lcom/android/calendar/common/event/schema/AgendaEvent;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getStartMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p2, v0

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEndMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v2, v0

    .line 42
    :goto_1
    invoke-static {v1, p1, p2, v2}, La2/a;->d(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_2
    return-object v0
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

.method protected O0(Lcom/android/calendar/common/event/schema/AgendaEvent;)V
    .locals 10

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->u0:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->v:Landroid/widget/TextView;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->E:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_1
    iget v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->i0:F

    .line 45
    .line 46
    goto :goto_6

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->v:Landroid/widget/TextView;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->v:Landroid/widget/TextView;

    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_5
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->v:Landroid/widget/TextView;

    .line 72
    .line 73
    if-nez v0, :cond_6

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :goto_4
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->E:Landroid/widget/ImageView;

    .line 80
    .line 81
    if-nez v0, :cond_7

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :goto_5
    iget v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->g0:F

    .line 88
    .line 89
    :goto_6
    iput v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0:F

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n:Landroid/widget/TextView;

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    if-eqz v0, :cond_e

    .line 95
    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    iget v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->l0:F

    .line 99
    .line 100
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    .line 102
    .line 103
    :cond_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    int-to-float v5, v5

    .line 120
    cmpg-float v4, v4, v5

    .line 121
    .line 122
    if-gtz v4, :cond_9

    .line 123
    .line 124
    move v4, v3

    .line 125
    goto :goto_7

    .line 126
    :cond_9
    move v4, v2

    .line 127
    :goto_7
    iget-object v5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->x:Landroid/view/View;

    .line 128
    .line 129
    if-nez v5, :cond_a

    .line 130
    .line 131
    goto :goto_8

    .line 132
    :cond_a
    iget v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0:F

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 135
    .line 136
    .line 137
    :goto_8
    if-eqz v4, :cond_b

    .line 138
    .line 139
    iget v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->l0:F

    .line 140
    .line 141
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    .line 143
    .line 144
    iget v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0:F

    .line 145
    .line 146
    iget v5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->h0:F

    .line 147
    .line 148
    :goto_9
    sub-float/2addr v4, v5

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    iget v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->m0:F

    .line 151
    .line 152
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    int-to-float v5, v5

    .line 172
    cmpg-float v4, v4, v5

    .line 173
    .line 174
    if-gtz v4, :cond_c

    .line 175
    .line 176
    move v4, v3

    .line 177
    goto :goto_a

    .line 178
    :cond_c
    move v4, v2

    .line 179
    :goto_a
    if-eqz v4, :cond_d

    .line 180
    .line 181
    iget v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0:F

    .line 182
    .line 183
    iget v5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->h0:F

    .line 184
    .line 185
    goto :goto_9

    .line 186
    :cond_d
    iget v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0:F

    .line 187
    .line 188
    iget v5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->f0:F

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :goto_b
    iput v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->j0:F

    .line 192
    .line 193
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    :cond_e
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const/4 v5, 0x0

    .line 212
    const/4 v6, 0x0

    .line 213
    new-instance v7, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;

    .line 214
    .line 215
    const/4 v0, 0x0

    .line 216
    invoke-direct {v7, p0, p1, v0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Lkotlin/coroutines/c;)V

    .line 217
    .line 218
    .line 219
    const/4 v8, 0x3

    .line 220
    const/4 v9, 0x0

    .line 221
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    iput-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->s0:Lkotlinx/coroutines/s1;

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->canRespond()Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-nez v4, :cond_10

    .line 236
    .line 237
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->J:Landroid/widget/RadioGroup;

    .line 238
    .line 239
    if-nez v0, :cond_f

    .line 240
    .line 241
    goto/16 :goto_17

    .line 242
    .line 243
    :cond_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_17

    .line 247
    .line 248
    :cond_10
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->K:Landroid/view/ViewStub;

    .line 249
    .line 250
    if-eqz v4, :cond_11

    .line 251
    .line 252
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    goto :goto_c

    .line 257
    :cond_11
    move-object v4, v0

    .line 258
    :goto_c
    if-eqz v4, :cond_12

    .line 259
    .line 260
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->K:Landroid/view/ViewStub;

    .line 261
    .line 262
    if-eqz v4, :cond_12

    .line 263
    .line 264
    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    goto :goto_d

    .line 269
    :cond_12
    move-object v4, v0

    .line 270
    :goto_d
    if-eqz v4, :cond_13

    .line 271
    .line 272
    const v5, 0x7f0a04f5

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    check-cast v4, Landroid/widget/RadioGroup;

    .line 280
    .line 281
    goto :goto_e

    .line 282
    :cond_13
    move-object v4, v0

    .line 283
    :goto_e
    iput-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->J:Landroid/widget/RadioGroup;

    .line 284
    .line 285
    if-nez v4, :cond_14

    .line 286
    .line 287
    goto :goto_f

    .line 288
    :cond_14
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    .line 290
    .line 291
    :goto_f
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    if-eqz v4, :cond_15

    .line 296
    .line 297
    invoke-virtual {v4}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getAttendeeResponse()I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    goto :goto_10

    .line 306
    :cond_15
    move-object v4, v0

    .line 307
    :goto_10
    if-eqz v4, :cond_17

    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    if-eqz v4, :cond_16

    .line 314
    .line 315
    invoke-virtual {v4}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getAttendeeResponse()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-nez v4, :cond_16

    .line 320
    .line 321
    move v4, v3

    .line 322
    goto :goto_11

    .line 323
    :cond_16
    move v4, v2

    .line 324
    :goto_11
    if-nez v4, :cond_17

    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    if-eqz v4, :cond_18

    .line 331
    .line 332
    invoke-virtual {v4}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getAttendeeResponse()I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    goto :goto_12

    .line 341
    :cond_17
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getAttendeeResponse()I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    :cond_18
    :goto_12
    if-nez v0, :cond_19

    .line 350
    .line 351
    goto :goto_13

    .line 352
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-ne v4, v3, :cond_1a

    .line 357
    .line 358
    const v0, 0x7f0a04c5

    .line 359
    .line 360
    .line 361
    goto :goto_16

    .line 362
    :cond_1a
    :goto_13
    const/4 v4, 0x4

    .line 363
    if-nez v0, :cond_1b

    .line 364
    .line 365
    goto :goto_14

    .line 366
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-ne v5, v4, :cond_1c

    .line 371
    .line 372
    const v0, 0x7f0a04c3

    .line 373
    .line 374
    .line 375
    goto :goto_16

    .line 376
    :cond_1c
    :goto_14
    const/4 v4, 0x2

    .line 377
    if-nez v0, :cond_1d

    .line 378
    .line 379
    goto :goto_15

    .line 380
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-ne v0, v4, :cond_1e

    .line 385
    .line 386
    const v0, 0x7f0a04c4

    .line 387
    .line 388
    .line 389
    goto :goto_16

    .line 390
    :cond_1e
    :goto_15
    const/4 v0, -0x1

    .line 391
    :goto_16
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->J:Landroid/widget/RadioGroup;

    .line 392
    .line 393
    if-eqz v4, :cond_1f

    .line 394
    .line 395
    invoke-virtual {v4, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 396
    .line 397
    .line 398
    :cond_1f
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->J:Landroid/widget/RadioGroup;

    .line 399
    .line 400
    if-eqz v0, :cond_20

    .line 401
    .line 402
    new-instance v4, Lcom/android/calendar/event/v2/a;

    .line 403
    .line 404
    invoke-direct {v4, p0, p1}, Lcom/android/calendar/event/v2/a;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 408
    .line 409
    .line 410
    :cond_20
    :goto_17
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getDescription()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-eqz v0, :cond_22

    .line 419
    .line 420
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->N:Landroid/view/ViewGroup;

    .line 421
    .line 422
    if-nez v0, :cond_21

    .line 423
    .line 424
    goto :goto_19

    .line 425
    :cond_21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    goto :goto_19

    .line 429
    :cond_22
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->N:Landroid/view/ViewGroup;

    .line 430
    .line 431
    if-nez v0, :cond_23

    .line 432
    .line 433
    goto :goto_18

    .line 434
    :cond_23
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    .line 436
    .line 437
    :goto_18
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->N:Landroid/view/ViewGroup;

    .line 438
    .line 439
    if-eqz v0, :cond_24

    .line 440
    .line 441
    new-instance v4, Lcom/android/calendar/event/v2/l;

    .line 442
    .line 443
    invoke-direct {v4, p0, p1}, Lcom/android/calendar/event/v2/l;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 447
    .line 448
    .line 449
    :cond_24
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->P:Landroid/widget/TextView;

    .line 450
    .line 451
    if-eqz v0, :cond_25

    .line 452
    .line 453
    new-instance v4, Lcom/android/calendar/event/v2/p;

    .line 454
    .line 455
    invoke-direct {v4, p0, p1}, Lcom/android/calendar/event/v2/p;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    .line 460
    .line 461
    :cond_25
    :goto_19
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Y:Landroid/widget/TextView;

    .line 462
    .line 463
    if-nez v0, :cond_26

    .line 464
    .line 465
    goto :goto_1a

    .line 466
    :cond_26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    invoke-static {v4, v5, v6}, Lcom/android/calendar/event/f0;->b(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    :goto_1a
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->X:Landroid/view/ViewGroup;

    .line 490
    .line 491
    if-eqz v0, :cond_27

    .line 492
    .line 493
    new-instance v4, Lcom/android/calendar/event/v2/q;

    .line 494
    .line 495
    invoke-direct {v4, p0, p1}, Lcom/android/calendar/event/v2/q;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    .line 500
    .line 501
    :cond_27
    invoke-direct {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->h1()V

    .line 502
    .line 503
    .line 504
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->a0:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 505
    .line 506
    if-nez v0, :cond_28

    .line 507
    .line 508
    goto :goto_1b

    .line 509
    :cond_28
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    invoke-virtual {v0, v4}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 514
    .line 515
    .line 516
    :goto_1b
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->a0:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 517
    .line 518
    if-eqz v0, :cond_29

    .line 519
    .line 520
    new-instance v4, Lcom/android/calendar/event/v2/r;

    .line 521
    .line 522
    invoke-direct {v4, p1, p0}, Lcom/android/calendar/event/v2/r;-><init>(Lcom/android/calendar/common/event/schema/AgendaEvent;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 526
    .line 527
    .line 528
    :cond_29
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getAcceptedAttendees()Ljava/util/List;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    if-eqz v0, :cond_2a

    .line 533
    .line 534
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    goto :goto_1c

    .line 539
    :cond_2a
    move v0, v2

    .line 540
    :goto_1c
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getDeclinedAttendees()Ljava/util/List;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    if-eqz v4, :cond_2b

    .line 545
    .line 546
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    goto :goto_1d

    .line 551
    :cond_2b
    move v4, v2

    .line 552
    :goto_1d
    add-int/2addr v0, v4

    .line 553
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getTentativeAttendees()Ljava/util/List;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    if-eqz v4, :cond_2c

    .line 558
    .line 559
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    goto :goto_1e

    .line 564
    :cond_2c
    move v4, v2

    .line 565
    :goto_1e
    add-int/2addr v0, v4

    .line 566
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getNoResponseAttendees()Ljava/util/List;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    if-eqz v4, :cond_2d

    .line 571
    .line 572
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    goto :goto_1f

    .line 577
    :cond_2d
    move v4, v2

    .line 578
    :goto_1f
    add-int/2addr v0, v4

    .line 579
    if-lez v0, :cond_30

    .line 580
    .line 581
    iput-boolean v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->d0:Z

    .line 582
    .line 583
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->b0:Landroid/view/ViewGroup;

    .line 584
    .line 585
    if-nez v4, :cond_2e

    .line 586
    .line 587
    goto :goto_20

    .line 588
    :cond_2e
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    .line 590
    .line 591
    :goto_20
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->c0:Landroid/widget/TextView;

    .line 592
    .line 593
    if-nez v4, :cond_2f

    .line 594
    .line 595
    goto :goto_21

    .line 596
    :cond_2f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    const v6, 0x7f100045

    .line 601
    .line 602
    .line 603
    new-array v3, v3, [Ljava/lang/Object;

    .line 604
    .line 605
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 606
    .line 607
    .line 608
    move-result-object v7

    .line 609
    aput-object v7, v3, v2

    .line 610
    .line 611
    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    .line 617
    .line 618
    :goto_21
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->b0:Landroid/view/ViewGroup;

    .line 619
    .line 620
    if-eqz v0, :cond_32

    .line 621
    .line 622
    new-instance v3, Lcom/android/calendar/event/v2/s;

    .line 623
    .line 624
    invoke-direct {v3, p0, p1}, Lcom/android/calendar/event/v2/s;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    .line 629
    .line 630
    goto :goto_22

    .line 631
    :cond_30
    iput-boolean v2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->d0:Z

    .line 632
    .line 633
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->b0:Landroid/view/ViewGroup;

    .line 634
    .line 635
    if-nez v0, :cond_31

    .line 636
    .line 637
    goto :goto_22

    .line 638
    :cond_31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 639
    .line 640
    .line 641
    :cond_32
    :goto_22
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPText()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    if-nez v0, :cond_35

    .line 650
    .line 651
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPData()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-nez v0, :cond_35

    .line 660
    .line 661
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 662
    .line 663
    if-nez v0, :cond_33

    .line 664
    .line 665
    goto :goto_23

    .line 666
    :cond_33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 667
    .line 668
    .line 669
    :goto_23
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 670
    .line 671
    if-nez v0, :cond_34

    .line 672
    .line 673
    goto :goto_24

    .line 674
    :cond_34
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPText()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    .line 680
    .line 681
    :goto_24
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 682
    .line 683
    if-eqz v0, :cond_37

    .line 684
    .line 685
    new-instance v3, Lcom/android/calendar/event/v2/t;

    .line 686
    .line 687
    invoke-direct {v3, p0, p1}, Lcom/android/calendar/event/v2/t;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    .line 692
    .line 693
    goto :goto_25

    .line 694
    :cond_35
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 695
    .line 696
    if-nez v0, :cond_36

    .line 697
    .line 698
    goto :goto_25

    .line 699
    :cond_36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 700
    .line 701
    .line 702
    :cond_37
    :goto_25
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPText()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-nez v0, :cond_3a

    .line 711
    .line 712
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPData()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    if-nez v0, :cond_3a

    .line 721
    .line 722
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 723
    .line 724
    if-nez v0, :cond_38

    .line 725
    .line 726
    goto :goto_26

    .line 727
    :cond_38
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 728
    .line 729
    .line 730
    :goto_26
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 731
    .line 732
    if-nez v0, :cond_39

    .line 733
    .line 734
    goto :goto_27

    .line 735
    :cond_39
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getThirdPartyEPText()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    .line 741
    .line 742
    :goto_27
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 743
    .line 744
    if-eqz v0, :cond_3f

    .line 745
    .line 746
    new-instance v1, Lcom/android/calendar/event/v2/u;

    .line 747
    .line 748
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/v2/u;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    .line 753
    .line 754
    goto :goto_2a

    .line 755
    :cond_3a
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getUrl()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 760
    .line 761
    .line 762
    move-result v0

    .line 763
    if-nez v0, :cond_3d

    .line 764
    .line 765
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getUrlText()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    if-nez v0, :cond_3d

    .line 774
    .line 775
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 776
    .line 777
    if-nez v0, :cond_3b

    .line 778
    .line 779
    goto :goto_28

    .line 780
    :cond_3b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 781
    .line 782
    .line 783
    :goto_28
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 784
    .line 785
    if-nez v0, :cond_3c

    .line 786
    .line 787
    goto :goto_29

    .line 788
    :cond_3c
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getUrlText()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v1

    .line 792
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    .line 794
    .line 795
    :goto_29
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 796
    .line 797
    if-eqz v0, :cond_3f

    .line 798
    .line 799
    new-instance v1, Lcom/android/calendar/event/v2/v;

    .line 800
    .line 801
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/v2/v;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    .line 806
    .line 807
    goto :goto_2a

    .line 808
    :cond_3d
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 809
    .line 810
    if-nez p1, :cond_3e

    .line 811
    .line 812
    goto :goto_2a

    .line 813
    :cond_3e
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 814
    .line 815
    .line 816
    :cond_3f
    :goto_2a
    return-void
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->x0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x271b

    .line 5
    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x2726

    .line 9
    .line 10
    if-eq p2, p1, :cond_1

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
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

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->onAttach(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const/high16 v0, 0x439a0000    # 308.0f

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->g0:F

    .line 16
    .line 17
    const/high16 v0, 0x43510000    # 209.0f

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->f0:F

    .line 24
    .line 25
    const v0, 0x43b68000    # 365.0f

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->i0:F

    .line 33
    .line 34
    const/high16 v0, 0x43090000    # 137.0f

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->h0:F

    .line 41
    .line 42
    const/high16 v0, 0x42a60000    # 83.0f

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->l0:F

    .line 49
    .line 50
    const/high16 v0, 0x42800000    # 64.0f

    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->m0:F

    .line 57
    .line 58
    new-instance p1, Lcom/android/calendar/event/l;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p1, v0}, Lcom/android/calendar/event/l;-><init>(Landroid/app/Activity;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->p0:Lcom/android/calendar/event/l;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v0, 0x1

    .line 74
    const/4 v1, 0x0

    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getAttendeeResponse()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_0

    .line 82
    .line 83
    move v1, v0

    .line 84
    :cond_0
    if-nez v1, :cond_1

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->p0:Lcom/android/calendar/event/l;

    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/android/calendar/event/l;->e(I)V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->q()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    iput-object p3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->l:Landroid/view/View;

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    const p3, 0x7f0d00ad

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->l:Landroid/view/View;

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->l:Landroid/view/View;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    new-instance p2, Lcom/android/calendar/event/v2/b;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/android/calendar/event/v2/b;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    const p2, 0x7f0a014f

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroid/widget/FrameLayout;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->m:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    const p2, 0x7f0a0697

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n:Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    new-instance p3, Lcom/android/calendar/event/v2/c;

    .line 63
    .line 64
    invoke-direct {p3, p0}, Lcom/android/calendar/event/v2/c;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    const p2, 0x7f0a0696

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o:Landroid/widget/TextView;

    .line 80
    .line 81
    const p2, 0x7f0a0279

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->r:Landroid/view/View;

    .line 89
    .line 90
    const p2, 0x7f0a0678

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Landroid/widget/TextView;

    .line 98
    .line 99
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->v:Landroid/widget/TextView;

    .line 100
    .line 101
    if-eqz p2, :cond_3

    .line 102
    .line 103
    new-instance p3, Lcom/android/calendar/event/v2/d;

    .line 104
    .line 105
    invoke-direct {p3}, Lcom/android/calendar/event/v2/d;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    const p2, 0x7f0a066f

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->w:Landroid/widget/TextView;

    .line 121
    .line 122
    if-eqz p2, :cond_4

    .line 123
    .line 124
    new-instance p3, Lcom/android/calendar/event/v2/e;

    .line 125
    .line 126
    invoke-direct {p3}, Lcom/android/calendar/event/v2/e;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    const p2, 0x7f0a0358

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    check-cast p2, Landroid/widget/ImageView;

    .line 140
    .line 141
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->E:Landroid/widget/ImageView;

    .line 142
    .line 143
    const p2, 0x7f0a01e5

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->x:Landroid/view/View;

    .line 151
    .line 152
    const p2, 0x7f0a04f5

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Landroid/widget/RadioGroup;

    .line 160
    .line 161
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->J:Landroid/widget/RadioGroup;

    .line 162
    .line 163
    const p2, 0x7f0a04f6

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    check-cast p2, Landroid/view/ViewStub;

    .line 171
    .line 172
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->K:Landroid/view/ViewStub;

    .line 173
    .line 174
    const p2, 0x7f0a01c6

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    check-cast p2, Landroid/view/ViewStub;

    .line 182
    .line 183
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->L:Landroid/view/ViewStub;

    .line 184
    .line 185
    const p2, 0x7f0a01c5

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Landroid/view/ViewStub;

    .line 193
    .line 194
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->M:Landroid/view/ViewStub;

    .line 195
    .line 196
    const p2, 0x7f0a038c

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    check-cast p2, Landroid/view/ViewGroup;

    .line 204
    .line 205
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->N:Landroid/view/ViewGroup;

    .line 206
    .line 207
    if-eqz p2, :cond_5

    .line 208
    .line 209
    new-instance p3, Lcom/android/calendar/event/v2/f;

    .line 210
    .line 211
    invoke-direct {p3}, Lcom/android/calendar/event/v2/f;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    :cond_5
    const p2, 0x7f0a0672

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    check-cast p2, Landroid/widget/TextView;

    .line 225
    .line 226
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->O:Landroid/widget/TextView;

    .line 227
    .line 228
    const p2, 0x7f0a0287

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    check-cast p2, Landroid/widget/TextView;

    .line 236
    .line 237
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->P:Landroid/widget/TextView;

    .line 238
    .line 239
    const p2, 0x7f0a038e

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    check-cast p2, Landroid/view/ViewGroup;

    .line 247
    .line 248
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Q:Landroid/view/ViewGroup;

    .line 249
    .line 250
    const p2, 0x7f0a0689

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    check-cast p2, Landroid/widget/TextView;

    .line 258
    .line 259
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->R:Landroid/widget/TextView;

    .line 260
    .line 261
    const p2, 0x7f0a017e

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p2, Landroid/view/ViewGroup;

    .line 269
    .line 270
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->U:Landroid/view/ViewGroup;

    .line 271
    .line 272
    if-eqz p2, :cond_6

    .line 273
    .line 274
    new-instance p3, Lcom/android/calendar/event/v2/g;

    .line 275
    .line 276
    invoke-direct {p3}, Lcom/android/calendar/event/v2/g;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    :cond_6
    const p2, 0x7f0a017d

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    check-cast p2, Landroid/view/ViewGroup;

    .line 290
    .line 291
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->S:Landroid/view/ViewGroup;

    .line 292
    .line 293
    const p2, 0x7f0a0687

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    check-cast p2, Landroid/widget/TextView;

    .line 301
    .line 302
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->T:Landroid/widget/TextView;

    .line 303
    .line 304
    iget-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->S:Landroid/view/ViewGroup;

    .line 305
    .line 306
    if-eqz p2, :cond_7

    .line 307
    .line 308
    new-instance p3, Lcom/android/calendar/event/v2/h;

    .line 309
    .line 310
    invoke-direct {p3}, Lcom/android/calendar/event/v2/h;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .line 315
    .line 316
    :cond_7
    const p2, 0x7f0a0501

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    check-cast p2, Landroid/view/ViewGroup;

    .line 324
    .line 325
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->V:Landroid/view/ViewGroup;

    .line 326
    .line 327
    const p2, 0x7f0a0575

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    check-cast p2, Lmiuix/appcompat/widget/Spinner;

    .line 335
    .line 336
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->W:Lmiuix/appcompat/widget/Spinner;

    .line 337
    .line 338
    const p2, 0x7f0a017c

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    check-cast p2, Landroid/view/ViewGroup;

    .line 346
    .line 347
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->X:Landroid/view/ViewGroup;

    .line 348
    .line 349
    const p2, 0x7f0a0684

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    check-cast p2, Landroid/widget/TextView;

    .line 357
    .line 358
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Y:Landroid/widget/TextView;

    .line 359
    .line 360
    iget-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->X:Landroid/view/ViewGroup;

    .line 361
    .line 362
    invoke-static {p2}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 363
    .line 364
    .line 365
    const p2, 0x7f0a017a

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    check-cast p2, Landroid/view/ViewGroup;

    .line 373
    .line 374
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Z:Landroid/view/ViewGroup;

    .line 375
    .line 376
    const p2, 0x7f0a0510

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    check-cast p2, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 384
    .line 385
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->a0:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 386
    .line 387
    iget-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Z:Landroid/view/ViewGroup;

    .line 388
    .line 389
    if-eqz p2, :cond_8

    .line 390
    .line 391
    new-instance p3, Lcom/android/calendar/event/v2/i;

    .line 392
    .line 393
    invoke-direct {p3, p0}, Lcom/android/calendar/event/v2/i;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    .line 398
    .line 399
    :cond_8
    const p2, 0x7f0a0386

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    check-cast p2, Landroid/view/ViewGroup;

    .line 407
    .line 408
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->b0:Landroid/view/ViewGroup;

    .line 409
    .line 410
    const p2, 0x7f0a0669

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 414
    .line 415
    .line 416
    move-result-object p2

    .line 417
    check-cast p2, Landroid/widget/TextView;

    .line 418
    .line 419
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->c0:Landroid/widget/TextView;

    .line 420
    .line 421
    const p2, 0x7f0a013e

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->G:Landroid/view/View;

    .line 429
    .line 430
    const p2, 0x7f0a068d

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    check-cast p2, Landroid/widget/TextView;

    .line 438
    .line 439
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->H:Landroid/widget/TextView;

    .line 440
    .line 441
    const p2, 0x7f0a027a

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->I:Landroid/view/View;

    .line 449
    .line 450
    if-eqz p1, :cond_9

    .line 451
    .line 452
    new-instance p2, Lcom/android/calendar/event/v2/j;

    .line 453
    .line 454
    invoke-direct {p2, p0}, Lcom/android/calendar/event/v2/j;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    .line 459
    .line 460
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n:Landroid/widget/TextView;

    .line 461
    .line 462
    if-nez p1, :cond_a

    .line 463
    .line 464
    goto :goto_1

    .line 465
    :cond_a
    iget p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->f0:F

    .line 466
    .line 467
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 468
    .line 469
    .line 470
    :goto_1
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->x:Landroid/view/View;

    .line 471
    .line 472
    if-nez p1, :cond_b

    .line 473
    .line 474
    goto :goto_2

    .line 475
    :cond_b
    iget p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->g0:F

    .line 476
    .line 477
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 478
    .line 479
    .line 480
    :goto_2
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n:Landroid/widget/TextView;

    .line 481
    .line 482
    const/high16 p2, 0x3f800000    # 1.0f

    .line 483
    .line 484
    if-nez p1, :cond_c

    .line 485
    .line 486
    goto :goto_3

    .line 487
    :cond_c
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 488
    .line 489
    .line 490
    :goto_3
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->x:Landroid/view/View;

    .line 491
    .line 492
    if-nez p1, :cond_d

    .line 493
    .line 494
    goto :goto_4

    .line 495
    :cond_d
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 496
    .line 497
    .line 498
    :goto_4
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->l:Landroid/view/View;

    .line 499
    .line 500
    return-object p1
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->r0:Landroid/database/MatrixCursor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/database/AbstractCursor;->close()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->s0:Lkotlinx/coroutines/s1;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/s1$a;->a(Lkotlinx/coroutines/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->t0:Lkotlinx/coroutines/s1;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/s1$a;->a(Lkotlinx/coroutines/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
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

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->i()V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->O0(Lcom/android/calendar/common/event/schema/AgendaEvent;)V

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

.method public final onEventMainThread(Lcom/miui/calendar/util/g$s;)V
    .locals 6
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-wide v2, p1, Lcom/miui/calendar/util/g$s;->b:J

    .line 21
    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v2, v1

    .line 28
    :goto_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const-string v0, "Cal:D:AgendaEventInfoFragment"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/miui/calendar/util/g;->b(Lcom/miui/calendar/util/g$j;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object v1, p1, Lcom/miui/calendar/util/g$s;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    :cond_3
    if-eqz v1, :cond_b

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_b

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_b

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/android/calendar/settings/j;->m(Landroid/content/Context;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Z0(Lcom/miui/calendar/util/g$s;)V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    iget-object v1, p1, Lcom/miui/calendar/util/g$s;->a:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_6

    .line 106
    .line 107
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Z0(Lcom/miui/calendar/util/g$s;)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iget-object v2, p1, Lcom/miui/calendar/util/g$s;->a:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-ne v1, v2, :cond_a

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const/4 v2, 0x0

    .line 128
    move v3, v2

    .line 129
    :goto_2
    if-ge v3, v1, :cond_8

    .line 130
    .line 131
    iget-object v4, p1, Lcom/miui/calendar/util/g$s;->a:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_7

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_8
    const/4 v2, 0x1

    .line 148
    :goto_3
    if-nez v2, :cond_9

    .line 149
    .line 150
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->d1(Lcom/miui/calendar/util/g$s;)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->Z0(Lcom/miui/calendar/util/g$s;)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->d1(Lcom/miui/calendar/util/g$s;)V

    .line 159
    .line 160
    .line 161
    :cond_b
    :goto_4
    return-void
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o0:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 5
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
.end method

.method public onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o0:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->onResume()V

    .line 5
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
.end method

.method protected s()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic u(J)Lcom/android/calendar/common/event/schema/Event;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->C0(J)Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public w(Lw7/l;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q0:Lcom/android/calendar/event/b;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/android/calendar/event/b;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v0, v2, v3, v1}, Lcom/android/calendar/event/b;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q0:Lcom/android/calendar/event/b;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q0:Lcom/android/calendar/event/b;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    new-instance v2, Lcom/android/calendar/event/v2/m;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/android/calendar/event/v2/m;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/android/calendar/event/b;->B(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q0:Lcom/android/calendar/event/b;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    new-instance v2, Lcom/android/calendar/event/v2/n;

    .line 45
    .line 46
    invoke-direct {v2, p0, p1}, Lcom/android/calendar/event/v2/n;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lw7/l;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/android/calendar/event/b;->A(Lcom/android/calendar/event/b$e;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->z(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    const-wide/16 v4, 0x0

    .line 67
    .line 68
    cmp-long v2, v2, v4

    .line 69
    .line 70
    if-lez v2, :cond_4

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q0:Lcom/android/calendar/event/b;

    .line 73
    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getStartMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEndMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v6

    .line 84
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    const/4 v10, -0x1

    .line 89
    invoke-virtual/range {v3 .. v10}, Lcom/android/calendar/event/b;->s(JJJI)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {p1, v0}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_0
    return-void
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public x()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "withAppendedId(Events.CONTENT_URI, it.eventId)"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v3, "android.intent.action.EDIT"

    .line 32
    .line 33
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getStartMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    const-string v1, "beginTime"

    .line 41
    .line 42
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEndMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    const-string v3, "endTime"

    .line 50
    .line 51
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    const-string v1, "extra_key_edit_type"

    .line 56
    .line 57
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-class v1, Lcom/android/calendar/event/EditEventActivity;

    .line 65
    .line 66
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    const/16 v0, 0x271b

    .line 70
    .line 71
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
    .line 75
.end method

.method public y(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->y(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->I:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/android/calendar/event/v2/w;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/android/calendar/event/v2/w;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x3e8

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
    .line 21
    .line 22
.end method

.method protected final z0()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->t()Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "_id"

    .line 33
    .line 34
    filled-new-array {v1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x1

    .line 43
    new-array v1, v1, [Ljava/lang/Class;

    .line 44
    .line 45
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    aput-object v2, v1, v3

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "_id DESC"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->q(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/miui/calendar/util/p0;->i()Lcom/miui/calendar/util/p0$b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "connect(requireContext()\u2026\n                .query()"

    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Lcom/miui/calendar/util/p0$b;->l(I)Lcom/miui/calendar/util/p0$c;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v3}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 79
    return-object v0
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method
