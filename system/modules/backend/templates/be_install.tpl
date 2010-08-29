<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>">
<head>
<base href="<?php echo $this->base; ?>"></base>
<title>Contao Open Source CMS <?php echo VERSION; ?> :: Install Tool</title>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $this->charset; ?>" />
<link rel="stylesheet" type="text/css" href="system/themes/<?php echo $this->theme; ?>/basic.css?<?php echo VERSION .'.'. BUILD; ?>" media="screen" />
<link rel="stylesheet" type="text/css" href="system/themes/<?php echo $this->theme; ?>/install.css?<?php echo VERSION .'.'. BUILD; ?>" media="screen" />
<?php if ($this->isMac): ?>
<link rel="stylesheet" type="text/css" href="system/themes/<?php echo $this->theme; ?>/macfixes.css?<?php echo VERSION .'.'. BUILD; ?>" media="screen" />
<?php endif; ?>
<!--[if lte IE 7]><link type="text/css" rel="stylesheet" href="system/themes/<?php echo $this->theme; ?>/iefixes.css?<?php echo VERSION .'.'. BUILD; ?>" media="screen" /><![endif]-->
<!--[if IE 8]><link type="text/css" rel="stylesheet" href="system/themes/<?php echo $this->theme; ?>/ie8fixes.css?<?php echo VERSION .'.'. BUILD; ?>" media="screen" /><![endif]-->
<script type="text/javascript" src="plugins/mootools/mootools-core.js?<?php echo MOOTOOLS_CORE; ?>"></script>
<script type="text/javascript" src="plugins/mootools/mootools-more.js?<?php echo MOOTOOLS_MORE; ?>"></script>
<script type="text/javascript" src="contao/contao.js?<?php echo VERSION .'.'. BUILD; ?>"></script>
<script type="text/javascript" src="system/themes/<?php echo $this->theme; ?>/hover.js?<?php echo VERSION .'.'. BUILD; ?>"></script>
</head>
<body>

<div id="header">
<h1>Contao Open Source CMS <?php echo VERSION; ?></h1>
</div>

<div id="container">
<div id="main">

<h2><?php echo $GLOBALS['TL_LANG']['tl_install']['installTool'][0]; ?></h2>
<?php if ($this->locked): ?>

<h3 class="no_border"><?php echo $GLOBALS['TL_LANG']['tl_install']['installTool'][1]; ?></h3>

<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['tl_install']['locked'][0]; ?></p>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['locked'][1]; ?></p>
<?php elseif (!$this->lcfWriteable): ?>

<h3 class="no_border"><?php echo $GLOBALS['TL_LANG']['tl_install']['ftp'][0]; ?></h3>

<?php if ($this->ftpHostError): ?>
<p class="tl_error"><?php printf($GLOBALS['TL_LANG']['tl_install']['ftpHostError'], $GLOBALS['TL_CONFIG']['ftpHost']); ?></p>
<?php elseif ($this->ftpUserError): ?>
<p class="tl_error"><?php printf($GLOBALS['TL_LANG']['tl_install']['ftpUserError'], $GLOBALS['TL_CONFIG']['ftpUser']); ?></p>
<?php elseif ($this->ftpPathError): ?>
<p class="tl_error"><?php printf($GLOBALS['TL_LANG']['tl_install']['ftpPathError'], $GLOBALS['TL_CONFIG']['ftpPath']); ?></p>
<?php endif; ?>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['ftp'][1]; ?></p>

<form action="<?php echo $this->action; ?>" class="tl_install_form" method="post">
<div class="tl_formbody">
  <input type="hidden" name="FORM_SUBMIT" value="tl_ftp" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['ftpHost']; ?></h4>
  <input type="text" name="host" id="host" class="tl_text" value="<?php echo $GLOBALS['TL_CONFIG']['ftpHost']; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['ftpPath']; ?></h4>
  <input type="text" name="path" id="path" class="tl_text" value="<?php echo $GLOBALS['TL_CONFIG']['ftpPath']; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['ftpUser']; ?></h4>
  <input type="text" name="username" id="username" class="tl_text" value="<?php echo $GLOBALS['TL_CONFIG']['ftpUser']; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['ftpPass']; ?></h4>
  <input type="password" name="password" id="password" class="tl_text" value="<?php echo $GLOBALS['TL_CONFIG']['ftpPass']; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['ftpSSLh4']; ?></h4>
  <div class="tl_checkbox_container" style="margin-top:3px;">
    <input type="checkbox" name="ssl" id="ctrl_ssl" class="tl_checkbox" value="1"<?php echo $GLOBALS['TL_CONFIG']['ftpSSL'] ? ' checked="checked"' : ''; ?> /> <label for="ctrl_ssl"><?php echo $GLOBALS['TL_LANG']['tl_install']['ftpSSL']; ?></label>
  </div>
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['ftpPort']; ?></h4>
  <input type="text" name="port" id="port" class="tl_text" value="<?php echo $GLOBALS['TL_CONFIG']['ftpPort']; ?>" />
</div>
<div class="tl_formbody_submit">
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['ftpSave']; ?>" />
  </div>
</div>
</form>

<script type="text/javascript">
<!--//--><![CDATA[//><!--
window.addEvent('domready', function() {
  $('host').focus();
});
//--><!]]>
</script>
<?php elseif ($this->license): ?>

<h3 class="no_border">GNU Lesser General Public License</h3>

<div id="license">
<pre>
                    GNU GENERAL PUBLIC LICENSE
                       Version 3, 29 June 2007

 Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.

                            Preamble

  The GNU General Public License is a free, copyleft license for
software and other kinds of works.

  The licenses for most software and other practical works are designed
to take away your freedom to share and change the works.  By contrast,
the GNU General Public License is intended to guarantee your freedom to
share and change all versions of a program--to make sure it remains free
software for all its users.  We, the Free Software Foundation, use the
GNU General Public License for most of our software; it applies also to
any other work released this way by its authors.  You can apply it to
your programs, too.

  When we speak of free software, we are referring to freedom, not
price.  Our General Public Licenses are designed to make sure that you
have the freedom to distribute copies of free software (and charge for
them if you wish), that you receive source code or can get it if you
want it, that you can change the software or use pieces of it in new
free programs, and that you know you can do these things.

  To protect your rights, we need to prevent others from denying you
these rights or asking you to surrender the rights.  Therefore, you have
certain responsibilities if you distribute copies of the software, or if
you modify it: responsibilities to respect the freedom of others.

  For example, if you distribute copies of such a program, whether
gratis or for a fee, you must pass on to the recipients the same
freedoms that you received.  You must make sure that they, too, receive
or can get the source code.  And you must show them these terms so they
know their rights.

  Developers that use the GNU GPL protect your rights with two steps:
(1) assert copyright on the software, and (2) offer you this License
giving you legal permission to copy, distribute and/or modify it.

  For the developers' and authors' protection, the GPL clearly explains
that there is no warranty for this free software.  For both users' and
authors' sake, the GPL requires that modified versions be marked as
changed, so that their problems will not be attributed erroneously to
authors of previous versions.

  Some devices are designed to deny users access to install or run
modified versions of the software inside them, although the manufacturer
can do so.  This is fundamentally incompatible with the aim of
protecting users' freedom to change the software.  The systematic
pattern of such abuse occurs in the area of products for individuals to
use, which is precisely where it is most unacceptable.  Therefore, we
have designed this version of the GPL to prohibit the practice for those
products.  If such problems arise substantially in other domains, we
stand ready to extend this provision to those domains in future versions
of the GPL, as needed to protect the freedom of users.

  Finally, every program is threatened constantly by software patents.
States should not allow patents to restrict development and use of
software on general-purpose computers, but in those that do, we wish to
avoid the special danger that patents applied to a free program could
make it effectively proprietary.  To prevent this, the GPL assures that
patents cannot be used to render the program non-free.

  The precise terms and conditions for copying, distribution and
modification follow.

                       TERMS AND CONDITIONS

  0. Definitions.

  "This License" refers to version 3 of the GNU General Public License.

  "Copyright" also means copyright-like laws that apply to other kinds of
works, such as semiconductor masks.

  "The Program" refers to any copyrightable work licensed under this
License.  Each licensee is addressed as "you".  "Licensees" and
"recipients" may be individuals or organizations.

  To "modify" a work means to copy from or adapt all or part of the work
in a fashion requiring copyright permission, other than the making of an
exact copy.  The resulting work is called a "modified version" of the
earlier work or a work "based on" the earlier work.

  A "covered work" means either the unmodified Program or a work based
on the Program.

  To "propagate" a work means to do anything with it that, without
permission, would make you directly or secondarily liable for
infringement under applicable copyright law, except executing it on a
computer or modifying a private copy.  Propagation includes copying,
distribution (with or without modification), making available to the
public, and in some countries other activities as well.

  To "convey" a work means any kind of propagation that enables other
parties to make or receive copies.  Mere interaction with a user through
a computer network, with no transfer of a copy, is not conveying.

  An interactive user interface displays "Appropriate Legal Notices"
to the extent that it includes a convenient and prominently visible
feature that (1) displays an appropriate copyright notice, and (2)
tells the user that there is no warranty for the work (except to the
extent that warranties are provided), that licensees may convey the
work under this License, and how to view a copy of this License.  If
the interface presents a list of user commands or options, such as a
menu, a prominent item in the list meets this criterion.

  1. Source Code.

  The "source code" for a work means the preferred form of the work
for making modifications to it.  "Object code" means any non-source
form of a work.

  A "Standard Interface" means an interface that either is an official
standard defined by a recognized standards body, or, in the case of
interfaces specified for a particular programming language, one that
is widely used among developers working in that language.

  The "System Libraries" of an executable work include anything, other
than the work as a whole, that (a) is included in the normal form of
packaging a Major Component, but which is not part of that Major
Component, and (b) serves only to enable use of the work with that
Major Component, or to implement a Standard Interface for which an
implementation is available to the public in source code form.  A
"Major Component", in this context, means a major essential component
(kernel, window system, and so on) of the specific operating system
(if any) on which the executable work runs, or a compiler used to
produce the work, or an object code interpreter used to run it.

  The "Corresponding Source" for a work in object code form means all
the source code needed to generate, install, and (for an executable
work) run the object code and to modify the work, including scripts to
control those activities.  However, it does not include the work's
System Libraries, or general-purpose tools or generally available free
programs which are used unmodified in performing those activities but
which are not part of the work.  For example, Corresponding Source
includes interface definition files associated with source files for
the work, and the source code for shared libraries and dynamically
linked subprograms that the work is specifically designed to require,
such as by intimate data communication or control flow between those
subprograms and other parts of the work.

  The Corresponding Source need not include anything that users
can regenerate automatically from other parts of the Corresponding
Source.

  The Corresponding Source for a work in source code form is that
same work.

  2. Basic Permissions.

  All rights granted under this License are granted for the term of
copyright on the Program, and are irrevocable provided the stated
conditions are met.  This License explicitly affirms your unlimited
permission to run the unmodified Program.  The output from running a
covered work is covered by this License only if the output, given its
content, constitutes a covered work.  This License acknowledges your
rights of fair use or other equivalent, as provided by copyright law.

  You may make, run and propagate covered works that you do not
convey, without conditions so long as your license otherwise remains
in force.  You may convey covered works to others for the sole purpose
of having them make modifications exclusively for you, or provide you
with facilities for running those works, provided that you comply with
the terms of this License in conveying all material for which you do
not control copyright.  Those thus making or running the covered works
for you must do so exclusively on your behalf, under your direction
and control, on terms that prohibit them from making any copies of
your copyrighted material outside their relationship with you.

  Conveying under any other circumstances is permitted solely under
the conditions stated below.  Sublicensing is not allowed; section 10
makes it unnecessary.

  3. Protecting Users' Legal Rights From Anti-Circumvention Law.

  No covered work shall be deemed part of an effective technological
measure under any applicable law fulfilling obligations under article
11 of the WIPO copyright treaty adopted on 20 December 1996, or
similar laws prohibiting or restricting circumvention of such
measures.

  When you convey a covered work, you waive any legal power to forbid
circumvention of technological measures to the extent such circumvention
is effected by exercising rights under this License with respect to
the covered work, and you disclaim any intention to limit operation or
modification of the work as a means of enforcing, against the work's
users, your or third parties' legal rights to forbid circumvention of
technological measures.

  4. Conveying Verbatim Copies.

  You may convey verbatim copies of the Program's source code as you
receive it, in any medium, provided that you conspicuously and
appropriately publish on each copy an appropriate copyright notice;
keep intact all notices stating that this License and any
non-permissive terms added in accord with section 7 apply to the code;
keep intact all notices of the absence of any warranty; and give all
recipients a copy of this License along with the Program.

  You may charge any price or no price for each copy that you convey,
and you may offer support or warranty protection for a fee.

  5. Conveying Modified Source Versions.

  You may convey a work based on the Program, or the modifications to
produce it from the Program, in the form of source code under the
terms of section 4, provided that you also meet all of these conditions:

    a) The work must carry prominent notices stating that you modified
    it, and giving a relevant date.

    b) The work must carry prominent notices stating that it is
    released under this License and any conditions added under section
    7.  This requirement modifies the requirement in section 4 to
    "keep intact all notices".

    c) You must license the entire work, as a whole, under this
    License to anyone who comes into possession of a copy.  This
    License will therefore apply, along with any applicable section 7
    additional terms, to the whole of the work, and all its parts,
    regardless of how they are packaged.  This License gives no
    permission to license the work in any other way, but it does not
    invalidate such permission if you have separately received it.

    d) If the work has interactive user interfaces, each must display
    Appropriate Legal Notices; however, if the Program has interactive
    interfaces that do not display Appropriate Legal Notices, your
    work need not make them do so.

  A compilation of a covered work with other separate and independent
works, which are not by their nature extensions of the covered work,
and which are not combined with it such as to form a larger program,
in or on a volume of a storage or distribution medium, is called an
"aggregate" if the compilation and its resulting copyright are not
used to limit the access or legal rights of the compilation's users
beyond what the individual works permit.  Inclusion of a covered work
in an aggregate does not cause this License to apply to the other
parts of the aggregate.

  6. Conveying Non-Source Forms.

  You may convey a covered work in object code form under the terms
of sections 4 and 5, provided that you also convey the
machine-readable Corresponding Source under the terms of this License,
in one of these ways:

    a) Convey the object code in, or embodied in, a physical product
    (including a physical distribution medium), accompanied by the
    Corresponding Source fixed on a durable physical medium
    customarily used for software interchange.

    b) Convey the object code in, or embodied in, a physical product
    (including a physical distribution medium), accompanied by a
    written offer, valid for at least three years and valid for as
    long as you offer spare parts or customer support for that product
    model, to give anyone who possesses the object code either (1) a
    copy of the Corresponding Source for all the software in the
    product that is covered by this License, on a durable physical
    medium customarily used for software interchange, for a price no
    more than your reasonable cost of physically performing this
    conveying of source, or (2) access to copy the
    Corresponding Source from a network server at no charge.

    c) Convey individual copies of the object code with a copy of the
    written offer to provide the Corresponding Source.  This
    alternative is allowed only occasionally and noncommercially, and
    only if you received the object code with such an offer, in accord
    with subsection 6b.

    d) Convey the object code by offering access from a designated
    place (gratis or for a charge), and offer equivalent access to the
    Corresponding Source in the same way through the same place at no
    further charge.  You need not require recipients to copy the
    Corresponding Source along with the object code.  If the place to
    copy the object code is a network server, the Corresponding Source
    may be on a different server (operated by you or a third party)
    that supports equivalent copying facilities, provided you maintain
    clear directions next to the object code saying where to find the
    Corresponding Source.  Regardless of what server hosts the
    Corresponding Source, you remain obligated to ensure that it is
    available for as long as needed to satisfy these requirements.

    e) Convey the object code using peer-to-peer transmission, provided
    you inform other peers where the object code and Corresponding
    Source of the work are being offered to the general public at no
    charge under subsection 6d.

  A separable portion of the object code, whose source code is excluded
from the Corresponding Source as a System Library, need not be
included in conveying the object code work.

  A "User Product" is either (1) a "consumer product", which means any
tangible personal property which is normally used for personal, family,
or household purposes, or (2) anything designed or sold for incorporation
into a dwelling.  In determining whether a product is a consumer product,
doubtful cases shall be resolved in favor of coverage.  For a particular
product received by a particular user, "normally used" refers to a
typical or common use of that class of product, regardless of the status
of the particular user or of the way in which the particular user
actually uses, or expects or is expected to use, the product.  A product
is a consumer product regardless of whether the product has substantial
commercial, industrial or non-consumer uses, unless such uses represent
the only significant mode of use of the product.

  "Installation Information" for a User Product means any methods,
procedures, authorization keys, or other information required to install
and execute modified versions of a covered work in that User Product from
a modified version of its Corresponding Source.  The information must
suffice to ensure that the continued functioning of the modified object
code is in no case prevented or interfered with solely because
modification has been made.

  If you convey an object code work under this section in, or with, or
specifically for use in, a User Product, and the conveying occurs as
part of a transaction in which the right of possession and use of the
User Product is transferred to the recipient in perpetuity or for a
fixed term (regardless of how the transaction is characterized), the
Corresponding Source conveyed under this section must be accompanied
by the Installation Information.  But this requirement does not apply
if neither you nor any third party retains the ability to install
modified object code on the User Product (for example, the work has
been installed in ROM).

  The requirement to provide Installation Information does not include a
requirement to continue to provide support service, warranty, or updates
for a work that has been modified or installed by the recipient, or for
the User Product in which it has been modified or installed.  Access to a
network may be denied when the modification itself materially and
adversely affects the operation of the network or violates the rules and
protocols for communication across the network.

  Corresponding Source conveyed, and Installation Information provided,
in accord with this section must be in a format that is publicly
documented (and with an implementation available to the public in
source code form), and must require no special password or key for
unpacking, reading or copying.

  7. Additional Terms.

  "Additional permissions" are terms that supplement the terms of this
License by making exceptions from one or more of its conditions.
Additional permissions that are applicable to the entire Program shall
be treated as though they were included in this License, to the extent
that they are valid under applicable law.  If additional permissions
apply only to part of the Program, that part may be used separately
under those permissions, but the entire Program remains governed by
this License without regard to the additional permissions.

  When you convey a copy of a covered work, you may at your option
remove any additional permissions from that copy, or from any part of
it.  (Additional permissions may be written to require their own
removal in certain cases when you modify the work.)  You may place
additional permissions on material, added by you to a covered work,
for which you have or can give appropriate copyright permission.

  Notwithstanding any other provision of this License, for material you
add to a covered work, you may (if authorized by the copyright holders of
that material) supplement the terms of this License with terms:

    a) Disclaiming warranty or limiting liability differently from the
    terms of sections 15 and 16 of this License; or

    b) Requiring preservation of specified reasonable legal notices or
    author attributions in that material or in the Appropriate Legal
    Notices displayed by works containing it; or

    c) Prohibiting misrepresentation of the origin of that material, or
    requiring that modified versions of such material be marked in
    reasonable ways as different from the original version; or

    d) Limiting the use for publicity purposes of names of licensors or
    authors of the material; or

    e) Declining to grant rights under trademark law for use of some
    trade names, trademarks, or service marks; or

    f) Requiring indemnification of licensors and authors of that
    material by anyone who conveys the material (or modified versions of
    it) with contractual assumptions of liability to the recipient, for
    any liability that these contractual assumptions directly impose on
    those licensors and authors.

  All other non-permissive additional terms are considered "further
restrictions" within the meaning of section 10.  If the Program as you
received it, or any part of it, contains a notice stating that it is
governed by this License along with a term that is a further
restriction, you may remove that term.  If a license document contains
a further restriction but permits relicensing or conveying under this
License, you may add to a covered work material governed by the terms
of that license document, provided that the further restriction does
not survive such relicensing or conveying.

  If you add terms to a covered work in accord with this section, you
must place, in the relevant source files, a statement of the
additional terms that apply to those files, or a notice indicating
where to find the applicable terms.

  Additional terms, permissive or non-permissive, may be stated in the
form of a separately written license, or stated as exceptions;
the above requirements apply either way.

  8. Termination.

  You may not propagate or modify a covered work except as expressly
provided under this License.  Any attempt otherwise to propagate or
modify it is void, and will automatically terminate your rights under
this License (including any patent licenses granted under the third
paragraph of section 11).

  However, if you cease all violation of this License, then your
license from a particular copyright holder is reinstated (a)
provisionally, unless and until the copyright holder explicitly and
finally terminates your license, and (b) permanently, if the copyright
holder fails to notify you of the violation by some reasonable means
prior to 60 days after the cessation.

  Moreover, your license from a particular copyright holder is
reinstated permanently if the copyright holder notifies you of the
violation by some reasonable means, this is the first time you have
received notice of violation of this License (for any work) from that
copyright holder, and you cure the violation prior to 30 days after
your receipt of the notice.

  Termination of your rights under this section does not terminate the
licenses of parties who have received copies or rights from you under
this License.  If your rights have been terminated and not permanently
reinstated, you do not qualify to receive new licenses for the same
material under section 10.

  9. Acceptance Not Required for Having Copies.

  You are not required to accept this License in order to receive or
run a copy of the Program.  Ancillary propagation of a covered work
occurring solely as a consequence of using peer-to-peer transmission
to receive a copy likewise does not require acceptance.  However,
nothing other than this License grants you permission to propagate or
modify any covered work.  These actions infringe copyright if you do
not accept this License.  Therefore, by modifying or propagating a
covered work, you indicate your acceptance of this License to do so.

  10. Automatic Licensing of Downstream Recipients.

  Each time you convey a covered work, the recipient automatically
receives a license from the original licensors, to run, modify and
propagate that work, subject to this License.  You are not responsible
for enforcing compliance by third parties with this License.

  An "entity transaction" is a transaction transferring control of an
organization, or substantially all assets of one, or subdividing an
organization, or merging organizations.  If propagation of a covered
work results from an entity transaction, each party to that
transaction who receives a copy of the work also receives whatever
licenses to the work the party's predecessor in interest had or could
give under the previous paragraph, plus a right to possession of the
Corresponding Source of the work from the predecessor in interest, if
the predecessor has it or can get it with reasonable efforts.

  You may not impose any further restrictions on the exercise of the
rights granted or affirmed under this License.  For example, you may
not impose a license fee, royalty, or other charge for exercise of
rights granted under this License, and you may not initiate litigation
(including a cross-claim or counterclaim in a lawsuit) alleging that
any patent claim is infringed by making, using, selling, offering for
sale, or importing the Program or any portion of it.

  11. Patents.

  A "contributor" is a copyright holder who authorizes use under this
License of the Program or a work on which the Program is based.  The
work thus licensed is called the contributor's "contributor version".

  A contributor's "essential patent claims" are all patent claims
owned or controlled by the contributor, whether already acquired or
hereafter acquired, that would be infringed by some manner, permitted
by this License, of making, using, or selling its contributor version,
but do not include claims that would be infringed only as a
consequence of further modification of the contributor version.  For
purposes of this definition, "control" includes the right to grant
patent sublicenses in a manner consistent with the requirements of
this License.

  Each contributor grants you a non-exclusive, worldwide, royalty-free
patent license under the contributor's essential patent claims, to
make, use, sell, offer for sale, import and otherwise run, modify and
propagate the contents of its contributor version.

  In the following three paragraphs, a "patent license" is any express
agreement or commitment, however denominated, not to enforce a patent
(such as an express permission to practice a patent or covenant not to
sue for patent infringement).  To "grant" such a patent license to a
party means to make such an agreement or commitment not to enforce a
patent against the party.

  If you convey a covered work, knowingly relying on a patent license,
and the Corresponding Source of the work is not available for anyone
to copy, free of charge and under the terms of this License, through a
publicly available network server or other readily accessible means,
then you must either (1) cause the Corresponding Source to be so
available, or (2) arrange to deprive yourself of the benefit of the
patent license for this particular work, or (3) arrange, in a manner
consistent with the requirements of this License, to extend the patent
license to downstream recipients.  "Knowingly relying" means you have
actual knowledge that, but for the patent license, your conveying the
covered work in a country, or your recipient's use of the covered work
in a country, would infringe one or more identifiable patents in that
country that you have reason to believe are valid.

  If, pursuant to or in connection with a single transaction or
arrangement, you convey, or propagate by procuring conveyance of, a
covered work, and grant a patent license to some of the parties
receiving the covered work authorizing them to use, propagate, modify
or convey a specific copy of the covered work, then the patent license
you grant is automatically extended to all recipients of the covered
work and works based on it.

  A patent license is "discriminatory" if it does not include within
the scope of its coverage, prohibits the exercise of, or is
conditioned on the non-exercise of one or more of the rights that are
specifically granted under this License.  You may not convey a covered
work if you are a party to an arrangement with a third party that is
in the business of distributing software, under which you make payment
to the third party based on the extent of your activity of conveying
the work, and under which the third party grants, to any of the
parties who would receive the covered work from you, a discriminatory
patent license (a) in connection with copies of the covered work
conveyed by you (or copies made from those copies), or (b) primarily
for and in connection with specific products or compilations that
contain the covered work, unless you entered into that arrangement,
or that patent license was granted, prior to 28 March 2007.

  Nothing in this License shall be construed as excluding or limiting
any implied license or other defenses to infringement that may
otherwise be available to you under applicable patent law.

  12. No Surrender of Others' Freedom.

  If conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License.  If you cannot convey a
covered work so as to satisfy simultaneously your obligations under this
License and any other pertinent obligations, then as a consequence you may
not convey it at all.  For example, if you agree to terms that obligate you
to collect a royalty for further conveying from those to whom you convey
the Program, the only way you could satisfy both those terms and this
License would be to refrain entirely from conveying the Program.

  13. Use with the GNU Affero General Public License.

  Notwithstanding any other provision of this License, you have
permission to link or combine any covered work with a work licensed
under version 3 of the GNU Affero General Public License into a single
combined work, and to convey the resulting work.  The terms of this
License will continue to apply to the part which is the covered work,
but the special requirements of the GNU Affero General Public License,
section 13, concerning interaction through a network will apply to the
combination as such.

  14. Revised Versions of this License.

  The Free Software Foundation may publish revised and/or new versions of
the GNU General Public License from time to time.  Such new versions will
be similar in spirit to the present version, but may differ in detail to
address new problems or concerns.

  Each version is given a distinguishing version number.  If the
Program specifies that a certain numbered version of the GNU General
Public License "or any later version" applies to it, you have the
option of following the terms and conditions either of that numbered
version or of any later version published by the Free Software
Foundation.  If the Program does not specify a version number of the
GNU General Public License, you may choose any version ever published
by the Free Software Foundation.

  If the Program specifies that a proxy can decide which future
versions of the GNU General Public License can be used, that proxy's
public statement of acceptance of a version permanently authorizes you
to choose that version for the Program.

  Later license versions may give you additional or different
permissions.  However, no additional obligations are imposed on any
author or copyright holder as a result of your choosing to follow a
later version.

  15. Disclaimer of Warranty.

  THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY
OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM
IS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF
ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

  16. Limitation of Liability.

  IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS
THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY
GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE
USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF
DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD
PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS),
EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.

  17. Interpretation of Sections 15 and 16.

  If the disclaimer of warranty and limitation of liability provided
above cannot be given local legal effect according to their terms,
reviewing courts shall apply local law that most closely approximates
an absolute waiver of all civil liability in connection with the
Program, unless a warranty or assumption of liability accompanies a
copy of the Program in return for a fee.


		   GNU LESSER GENERAL PUBLIC LICENSE
                       Version 3, 29 June 2007

 Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.


  This version of the GNU Lesser General Public License incorporates
the terms and conditions of version 3 of the GNU General Public
License, supplemented by the additional permissions listed below.

  0. Additional Definitions.

  As used herein, "this License" refers to version 3 of the GNU Lesser
General Public License, and the "GNU GPL" refers to version 3 of the GNU
General Public License.

  "The Library" refers to a covered work governed by this License,
other than an Application or a Combined Work as defined below.

  An "Application" is any work that makes use of an interface provided
by the Library, but which is not otherwise based on the Library.
Defining a subclass of a class defined by the Library is deemed a mode
of using an interface provided by the Library.

  A "Combined Work" is a work produced by combining or linking an
Application with the Library.  The particular version of the Library
with which the Combined Work was made is also called the "Linked
Version".

  The "Minimal Corresponding Source" for a Combined Work means the
Corresponding Source for the Combined Work, excluding any source code
for portions of the Combined Work that, considered in isolation, are
based on the Application, and not on the Linked Version.

  The "Corresponding Application Code" for a Combined Work means the
object code and/or source code for the Application, including any data
and utility programs needed for reproducing the Combined Work from the
Application, but excluding the System Libraries of the Combined Work.

  1. Exception to Section 3 of the GNU GPL.

  You may convey a covered work under sections 3 and 4 of this License
without being bound by section 3 of the GNU GPL.

  2. Conveying Modified Versions.

  If you modify a copy of the Library, and, in your modifications, a
facility refers to a function or data to be supplied by an Application
that uses the facility (other than as an argument passed when the
facility is invoked), then you may convey a copy of the modified
version:

   a) under this License, provided that you make a good faith effort to
   ensure that, in the event an Application does not supply the
   function or data, the facility still operates, and performs
   whatever part of its purpose remains meaningful, or

   b) under the GNU GPL, with none of the additional permissions of
   this License applicable to that copy.

  3. Object Code Incorporating Material from Library Header Files.

  The object code form of an Application may incorporate material from
a header file that is part of the Library.  You may convey such object
code under terms of your choice, provided that, if the incorporated
material is not limited to numerical parameters, data structure
layouts and accessors, or small macros, inline functions and templates
(ten or fewer lines in length), you do both of the following:

   a) Give prominent notice with each copy of the object code that the
   Library is used in it and that the Library and its use are
   covered by this License.

   b) Accompany the object code with a copy of the GNU GPL and this license
   document.

  4. Combined Works.

  You may convey a Combined Work under terms of your choice that,
taken together, effectively do not restrict modification of the
portions of the Library contained in the Combined Work and reverse
engineering for debugging such modifications, if you also do each of
the following:

   a) Give prominent notice with each copy of the Combined Work that
   the Library is used in it and that the Library and its use are
   covered by this License.

   b) Accompany the Combined Work with a copy of the GNU GPL and this license
   document.

   c) For a Combined Work that displays copyright notices during
   execution, include the copyright notice for the Library among
   these notices, as well as a reference directing the user to the
   copies of the GNU GPL and this license document.

   d) Do one of the following:

       0) Convey the Minimal Corresponding Source under the terms of this
       License, and the Corresponding Application Code in a form
       suitable for, and under terms that permit, the user to
       recombine or relink the Application with a modified version of
       the Linked Version to produce a modified Combined Work, in the
       manner specified by section 6 of the GNU GPL for conveying
       Corresponding Source.

       1) Use a suitable shared library mechanism for linking with the
       Library.  A suitable mechanism is one that (a) uses at run time
       a copy of the Library already present on the user's computer
       system, and (b) will operate properly with a modified version
       of the Library that is interface-compatible with the Linked
       Version.

   e) Provide Installation Information, but only if you would otherwise
   be required to provide such information under section 6 of the
   GNU GPL, and only to the extent that such information is
   necessary to install and execute a modified version of the
   Combined Work produced by recombining or relinking the
   Application with a modified version of the Linked Version. (If
   you use option 4d0, the Installation Information must accompany
   the Minimal Corresponding Source and Corresponding Application
   Code. If you use option 4d1, you must provide the Installation
   Information in the manner specified by section 6 of the GNU GPL
   for conveying Corresponding Source.)

  5. Combined Libraries.

  You may place library facilities that are a work based on the
Library side by side in a single library together with other library
facilities that are not Applications and are not covered by this
License, and convey such a combined library under terms of your
choice, if you do both of the following:

   a) Accompany the combined library with a copy of the same work based
   on the Library, uncombined with any other library facilities,
   conveyed under the terms of this License.

   b) Give prominent notice with the combined library that part of it
   is a work based on the Library, and explaining where to find the
   accompanying uncombined form of the same work.

  6. Revised Versions of the GNU Lesser General Public License.

  The Free Software Foundation may publish revised and/or new versions
of the GNU Lesser General Public License from time to time. Such new
versions will be similar in spirit to the present version, but may
differ in detail to address new problems or concerns.

  Each version is given a distinguishing version number. If the
Library as you received it specifies that a certain numbered version
of the GNU Lesser General Public License "or any later version"
applies to it, you have the option of following the terms and
conditions either of that published version or of any later version
published by the Free Software Foundation. If the Library as you
received it does not specify a version number of the GNU Lesser
General Public License, you may choose any version of the GNU Lesser
General Public License ever published by the Free Software Foundation.

  If the Library as you received it specifies that a proxy can decide
whether future versions of the GNU Lesser General Public License shall
apply, that proxy's public statement of acceptance of any version is
permanent authorization for you to choose that version for the
Library.
</pre>
</div>

<form action="<?php echo $this->action; ?>" class="tl_install_form" method="post">
<div class="tl_formbody_submit">
  <input type="hidden" name="FORM_SUBMIT" value="tl_license" />
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['accept']; ?>" onclick="Backend.getScrollOffset();" />
  </div>
</div>
</form>
<?php elseif ($this->login): ?>

<h3 class="no_border"><?php echo $GLOBALS['TL_LANG']['tl_install']['installTool'][1]; ?></h3>

<p class="tl_info" id="cookies"><?php echo $this->noCookies; ?></p>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['password'][1]; ?></p>

<form action="<?php echo $this->action; ?>" class="tl_install_form" method="post">
<div class="tl_formbody">
  <input type="hidden" name="FORM_SUBMIT" value="tl_login" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['password'][0]; ?></h4>
<?php if ($this->passwordError): ?>
  <p class="tl_error"><?php echo $this->passwordError; ?></p>
<?php endif; ?>
  <input type="password" name="password" id="password" class="tl_text" value="" />
</div>
<div class="tl_formbody_submit">
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['MSC']['login']; ?>" />
  </div>
</div>
</form>

<script type="text/javascript">
<!--//--><![CDATA[//><!--
window.addEvent('domready', function() {
  if (navigator.cookieEnabled) {
    $('cookies').destroy();
  }
});
//--><!]]>
</script>
<?php else: ?>

<h3 class="no_border"><?php echo $GLOBALS['TL_LANG']['tl_install']['changePass'][0]; ?></h3>

<?php if ($this->setPassword): ?>
<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['tl_install']['passError']; ?></p>
<?php else: ?>
<p class="tl_confirm"><?php echo $GLOBALS['TL_LANG']['tl_install']['passConfirm']; ?></p>
<?php endif; ?>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['changePass'][1]; ?></p>

<form action="<?php echo $this->action; ?>" class="tl_install_form" method="post">
<div class="tl_formbody">
  <input type="hidden" name="FORM_SUBMIT" value="tl_install" />
  <h4><label for="password"><?php echo $GLOBALS['TL_LANG']['MSC']['password'][0]; ?></label></h4>
<?php if ($this->passwordError): ?>
  <p class="tl_error"><?php echo $this->passwordError; ?></p>
<?php endif; ?>
  <input type="password" name="password" id="password" class="tl_text" value="" />
  <h4><label for="confirm_password"><?php echo $GLOBALS['TL_LANG']['MSC']['confirm'][0]; ?></label></h4>
  <input type="password" name="confirm_password" id="confirm_password" class="tl_text" value="" />
</div>
<div class="tl_formbody_submit">
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['passSave']; ?>" />
  </div>
</div>
</form>
<?php if (!$this->setPassword): ?>

<h3><?php echo $GLOBALS['TL_LANG']['tl_install']['encryption'][0]; ?></h3>

<?php if ($this->encryption): ?>
<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['tl_install']['keyError']; ?></p>
<?php elseif ($this->encryptionLength): ?>
<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['tl_install']['keyLength']; ?></p>
<?php else: ?>
<p class="tl_confirm"><?php echo $GLOBALS['TL_LANG']['tl_install']['keyConfirm']; ?></p>
<?php endif; ?>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['encryption'][1]; ?></p>

<form action="<?php echo $this->action; ?>" class="tl_install_form" method="post">
<div class="tl_formbody">
  <input type="hidden" name="FORM_SUBMIT" value="tl_encryption" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['keyCreate']; ?></h4>
  <input type="text" name="key" id="key" class="tl_text" value="<?php echo $this->encryptionKey; ?>" />
</div>
<div class="tl_formbody_submit">
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['keySave']; ?>" onclick="Backend.getScrollOffset();" />
  </div>
</div>
</form>
<?php if (!$this->encryption && !$this->encryptionLength): ?>

<h3><?php echo $GLOBALS['TL_LANG']['tl_install']['database'][0]; ?></h3>

<?php if ($this->dbConnection): ?>
<p class="tl_confirm"><?php echo $GLOBALS['TL_LANG']['tl_install']['dbConfirm']; ?></p>
<?php else: ?>
<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['tl_install']['dbError']; ?></p>
<?php endif; ?>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['database'][1]; ?></p>

<form action="<?php echo $this->action; ?>" class="tl_install_form" method="post">
<div class="tl_formbody">
  <input type="hidden" name="FORM_SUBMIT" value="tl_database_login" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['dbDriver']; ?></h4>
  <select name="dbDriver" id="dbDriver" class="tl_select"><?php echo $this->drivers; ?></select>
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['dbHost']; ?></h4>
  <input type="text" name="dbHost" id="dbHost" class="tl_text" value="<?php echo $this->host; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['dbUsername']; ?></h4>
  <input type="text" name="dbUser" id="dbUser" class="tl_text" value="<?php echo $this->user; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['MSC']['password'][0]; ?></h4>
  <input type="text" name="dbPass" id="dbPass" class="tl_text" value="<?php echo $this->pass; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['dbDatabase']; ?></h4>
  <input type="text" name="dbDatabase" id="dbDatabase" class="tl_text" value="<?php echo $this->database; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['dbPersistent']; ?></h4>
  <select name="dbPconnect" id="dbPconnect" class="tl_select"><option value="false"<?php if (!$this->pconnect) echo ' selected="selected"'; ?>><?php echo $GLOBALS['TL_LANG']['MSC']['no']; ?></option><option value="true"<?php if ($this->pconnect) echo ' selected="selected"'; ?>><?php echo $GLOBALS['TL_LANG']['MSC']['yes']; ?></option></select>
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['dbCharset']; ?></h4>
  <input type="text" name="dbCharset" id="dbCharset" class="tl_text" value="<?php echo $this->dbcharset; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['dbPort']; ?></h4>
  <input type="text" name="dbPort" id="dbPort" class="tl_text" value="<?php echo $this->port; ?>" />
</div>
<div class="tl_formbody_submit">
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['dbSave']; ?>" onclick="Backend.getScrollOffset();" />
  </div>
</div>
</form>
<?php if ($this->is28Update): ?>

<h3><?php echo $GLOBALS['TL_LANG']['tl_install']['update'][0]; ?></h3>

<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['tl_install']['updateError']; ?></p>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['update28']; ?></p>

<form action="<?php echo $this->action; ?>" class="tl_install_form" method="post">
<div class="tl_formbody_submit">
  <input type="hidden" name="FORM_SUBMIT" value="tl_28update" />
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['update28run']; ?>" onclick="Backend.getScrollOffset();" />
  </div>
</div>
</form>
<?php elseif ($this->is29Update): ?>

<h3><?php echo $GLOBALS['TL_LANG']['tl_install']['update'][0]; ?></h3>

<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['tl_install']['updateError']; ?></p>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['update29']; ?></p>

<form action="<?php echo $this->action; ?>" class="tl_install_form" method="post">
<div class="tl_formbody_submit">
  <input type="hidden" name="FORM_SUBMIT" value="tl_29update" />
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['update29run']; ?>" onclick="Backend.getScrollOffset();" />
  </div>
</div>
</form>
<?php elseif ($this->dbConnection): ?>

<h3><?php echo $GLOBALS['TL_LANG']['tl_install']['collation'][0]; ?></h3>

<p class="tl_info"><?php echo $GLOBALS['TL_LANG']['tl_install']['collationInfo']; ?></p>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['collation'][1]; ?></p>

<form action="<?php echo $this->action; ?>" class="tl_install_form" method="post">
<div class="tl_formbody">
  <input type="hidden" name="FORM_SUBMIT" value="tl_collation" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['dbCollation']; ?></h4>
  <select name="dbCollation" id="dbCollation" class="tl_select"><?php echo $this->collations; ?></select>
</div>
<div class="tl_formbody_submit">
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['updateSave']; ?>" onclick="Backend.getScrollOffset();" />
  </div>
</div>
</form>

<h3><?php echo $GLOBALS['TL_LANG']['tl_install']['update'][0]; ?></h3>

<?php if (!$this->dbUpToDate): ?>
<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['tl_install']['updateError']; ?></p>
<?php else: ?>
<p class="tl_confirm"><?php echo $GLOBALS['TL_LANG']['tl_install']['updateConfirm']; ?></p>
<?php endif; ?>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['update'][1]; ?></p>
<?php if (!$this->dbUpToDate): ?>

<form action="<?php echo $this->action; ?>" id="sql_form" class="tl_install_form" method="post">
<div class="tl_formbody">
  <input type="hidden" name="FORM_SUBMIT" value="tl_tables" /><?php echo $this->dbUpdate; ?>
</div>
<div class="tl_formbody_submit">
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['updateSave']; ?>" onclick="Backend.getScrollOffset();" />
  </div>
</div>
</form>
<?php endif; ?>

<h3><?php echo $GLOBALS['TL_LANG']['tl_install']['template'][0]; ?></h3>

<?php if ($this->emptySelection): ?>
<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['tl_install']['importError']; ?></p>
<?php elseif ($this->dateImported): ?>
<p class="tl_confirm"><?php printf($GLOBALS['TL_LANG']['tl_install']['importConfirm'], $this->dateImported); ?></p>
<?php else: ?>
<p class="tl_info"><?php echo $GLOBALS['TL_LANG']['tl_install']['importWarn']; ?></p>
<?php endif; ?>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['template'][1]; ?></p>

<form action="<?php echo $this->action; ?>" id="tl_static" class="tl_install_form" method="post">
<div class="tl_formbody_submit">
  <input type="hidden" name="FORM_SUBMIT" value="tl_tutorial" />
  <h4><?php echo $GLOBALS['TL_LANG']['tl_install']['templates']; ?></h4>
  <select name="template" class="tl_select"><?php echo $this->templates; ?></select>
  <div class="tl_checkbox_container" style="margin-top:3px;">
    <input type="checkbox" name="preserve" id="ctrl_preserve" class="tl_checkbox" value="1" /> <label for="ctrl_preserve"><?php echo $GLOBALS['TL_LANG']['tl_install']['doNotTruncate']; ?></label>
  </div>
</div>
<div class="tl_formbody_submit">
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['importSave']; ?>" onclick="if (!confirm('<?php echo $GLOBALS['TL_LANG']['tl_install']['importContinue']; ?>')) return false; Backend.getScrollOffset();" />
  </div>
</div>
</form>

<h3><?php echo $GLOBALS['TL_LANG']['tl_install']['admin'][0]; ?></h3>

<?php if (!$this->adminCreated): ?>
<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['tl_install']['adminError']; ?></p>
<?php else: ?>
<p class="tl_confirm"><?php echo $GLOBALS['TL_LANG']['tl_install']['adminConfirm']; ?></p>
<?php endif; ?>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['admin'][1]; ?></p>
<?php if (!$this->adminCreated): ?>

<form action="<?php echo $this->action; ?>" class="tl_install_form" method="post">
<div class="tl_formbody">
  <input type="hidden" name="FORM_SUBMIT" value="tl_admin" />
  <h4><?php echo $GLOBALS['TL_LANG']['MSC']['username']; ?></h4>
  <input type="text" name="username" id="username" class="tl_text" value="<?php echo $this->adminUser; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['MSC']['com_name']; ?></h4>
  <input type="text" name="name" id="name" class="tl_text" value="<?php echo $this->adminName; ?>" />
  <h4><?php echo $GLOBALS['TL_LANG']['MSC']['emailAddress']; ?></h4>
  <input type="text" name="email" id="email" class="tl_text" value="<?php echo $this->adminEmail; ?>" />
  <h4><label for="password"><?php echo $GLOBALS['TL_LANG']['MSC']['password'][0]; ?></label></h4>
<?php if ($this->adminError): ?>
  <p class="tl_error"><?php echo $this->adminError; ?></p>
<?php endif; ?>
  <input type="password" name="pass" id="pass" class="tl_text" value="" />
  <h4><label for="confirm_password"><?php echo $GLOBALS['TL_LANG']['MSC']['confirm'][0]; ?></label></h4>
  <input type="password" name="confirm_pass" id="confirm_pass" class="tl_text" value="" />
</div>
<div class="tl_formbody_submit">
  <div class="tl_submit_container">
    <input type="submit" value="<?php echo $GLOBALS['TL_LANG']['tl_install']['adminSave']; ?>" onclick="Backend.getScrollOffset();" />
  </div>
</div>
</form>
<?php else: ?>

<h3><?php echo $GLOBALS['TL_LANG']['tl_install']['completed'][0]; ?></h3>

<p class="tl_confirm"><?php echo $GLOBALS['TL_LANG']['tl_install']['installConfirm']; ?></p>
<p><?php echo $GLOBALS['TL_LANG']['tl_install']['completed'][1]; ?></p>
<?php endif; endif; endif; endif; endif; ?>

<p id="go_to_login"><a href="contao/index.php" title="<?php echo $GLOBALS['TL_LANG']['tl_install']['beLogin']; ?>"><?php echo $GLOBALS['TL_LANG']['tl_install']['beLogin']; ?></a></p>

</div>
</div>
<?php if ($this->login || $this->setPassword): ?>

<script type="text/javascript">
<!--//--><![CDATA[//><!--
window.addEvent('domready', function() {
  $('password').focus();
});
//--><!]]>
</script>
<?php endif; ?>
<?php if ($this->pageOffset): ?>

<script type="text/javascript">
<!--//--><![CDATA[//><!--
Backend.vScrollTo(<?php echo $this->pageOffset; ?>);
//--><!]]>
</script>
<?php setcookie('BE_PAGE_OFFSET', 0, 0, '/'); endif; ?>

</body>
</html>