// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/widgets.dart';

import '../story/story.dart';

Widget basic() => const Story(
      'Basic Typography',
      [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Typography('Text'),
        ),
      ],
    );

Widget styles() => const Story(
      'Available Styles',
      [
        Typography(
          'Heading 1',
          style: BlendTextStyle.h1,
        ),
        Typography(
          'Heading 2',
          style: BlendTextStyle.h2,
        ),
        Typography(
          'Heading 3',
          style: BlendTextStyle.h3,
        ),
        Typography(
          'Heading 4',
          style: BlendTextStyle.h4,
        ),
        Typography(
          'Heading 5',
          style: BlendTextStyle.h5,
        ),
        Typography(
          'Heading 6',
          style: BlendTextStyle.h6,
        ),
        Typography(
          'Body',
          style: BlendTextStyle.body,
        ),
        Typography(
          'Subtitle',
          style: BlendTextStyle.subtitle,
        ),
        Typography(
          'Caption',
          style: BlendTextStyle.caption,
        ),
        Typography(
          'Error',
          style: BlendTextStyle.error,
        ),
        Typography(
          'Primary',
          style: BlendTextStyle.primary,
        ),
        Typography(
          'Secondary',
          style: BlendTextStyle.secondary,
        ),
      ],
    );

Widget truncate() => const Story(
      'Truncation',
      [
        Typography(
          "Third Party Claims. If you cannot import information which is implemented by public license is intended to describe,",
        ),
        Typography(
          "Where such credit is commonly given through page histories (such as by license or b) a copy of this Agreement, and without fee is hereby granted, provided that such additional attribution requirements to the Covered Code. All sublicenses to the Source Code and all other entities that control, are controlled by, or are under common control with You.",
          maxLines: 1,
        ),
        Typography(
          "Work' Any work being distributed under the License will apply to the present version, but may differ in detail to address new problems or concerns. Each version is given a distinguishing version number. The Program (including Contributions) may always continue to use it for any purpose and without further action by the Copyright Holder. This license establishes the terms of this License exceed the total costs of program errors, compliance with applicable laws, damage to or loss of data, programs or equipment, and unavailability or interruption of operations. DISCLAIMER OF WARRANTY CONSTITUTES AN ESSENTIAL PART OF THIS LICENSE. NO USE OF ANY KIND, EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THE PACKAGE, EVEN IF ADVISED OF THE PROGRAM (INCLUDING BUT NOT LIMITED TO, WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE WARRANTIES OF MERCHANTABILITY OR FITNESS FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES, SO THIS EXCLUSION AND LIMITATION MAY NOT APPLY TO LIABILITY FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITATION, PSF MAKES NO REPRESENTATIONS OR WARRANTIES, EXPRESS OR IMPLIED INCLUDING, WITHOUT LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT, MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. You are permitted provided that the Work includes a \"NOTICE\" text file distributed as part of the Work, but excluding communication that is based on or incorporates Python 1.6b1 available to the extent necessary to use, copy, modify, and distribute the Derived Work must provide sufficient documentation as part of Licensed Product and include the Contribution.",
          maxLines: 5,
        ),
        Typography(
          'Contributor explicitly consents, in accordance with the Open Software Initiative (OSI) for approval. Preamble This Preamble is not already Covered Code has been modified in the Work that has been advised of the changes and/or additions to the risks and costs (collectively "Losses") arising from claims, lawsuits and other legal actions brought by any method, of any subsequent version of the Agreement is published, Contributor may participate in any form under the terms of this License, the Source Code, and (b) otherwise make it clear that any terms on any Source Code and destroy all copies and that you keep intact all the notices on all files listed in manifest.txt. Agreement. 7. "Reproduction and Other Exploitation of the Licensed Product, including Modifications made by that Contributor. Distribution Obligations. 3.1.',
          maxLines: 10000,
        ),
        Typography(
          'Application of this License Agreement, and to permit persons to whom the Software alone or by means of mailing a medium customarily used for software exchange. When the Program shall continue and survive. IBM may publish new versions of the date such litigation is filed.',
          maxLines: 0,
        ),
      ],
    );

Widget expandable() => const Story(
      'Expandable',
      [
        Typography(
          "Third Party Claims. If you cannot import information which is implemented by public license is intended to describe,",
          truncate: false,
        ),
        Typography(
          "Where such credit is commonly given through page histories (such as by license or b) a copy of this Agreement, and without fee is hereby granted, provided that such additional attribution requirements to the Covered Code. All sublicenses to the Source Code and all other entities that control, are controlled by, or are under common control with You.",
          maxLines: 1,
          truncate: false,
        ),
        Typography(
          "Work' Any work being distributed under the License will apply to the present version, but may differ in detail to address new problems or concerns. Each version is given a distinguishing version number. The Program (including Contributions) may always continue to use it for any purpose and without further action by the Copyright Holder. This license establishes the terms of this License exceed the total costs of program errors, compliance with applicable laws, damage to or loss of data, programs or equipment, and unavailability or interruption of operations. DISCLAIMER OF WARRANTY CONSTITUTES AN ESSENTIAL PART OF THIS LICENSE. NO USE OF ANY KIND, EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THE PACKAGE, EVEN IF ADVISED OF THE PROGRAM (INCLUDING BUT NOT LIMITED TO, WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE WARRANTIES OF MERCHANTABILITY OR FITNESS FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES, SO THIS EXCLUSION AND LIMITATION MAY NOT APPLY TO LIABILITY FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITATION, PSF MAKES NO REPRESENTATIONS OR WARRANTIES, EXPRESS OR IMPLIED INCLUDING, WITHOUT LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT, MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. You are permitted provided that the Work includes a \"NOTICE\" text file distributed as part of the Work, but excluding communication that is based on or incorporates Python 1.6b1 available to the extent necessary to use, copy, modify, and distribute the Derived Work must provide sufficient documentation as part of Licensed Product and include the Contribution.",
          maxLines: 5,
          truncate: false,
        ),
        Typography(
          'Contributor explicitly consents, in accordance with the Open Software Initiative (OSI) for approval. Preamble This Preamble is not already Covered Code has been modified in the Work that has been advised of the changes and/or additions to the risks and costs (collectively "Losses") arising from claims, lawsuits and other legal actions brought by any method, of any subsequent version of the Agreement is published, Contributor may participate in any form under the terms of this License, the Source Code, and (b) otherwise make it clear that any terms on any Source Code and destroy all copies and that you keep intact all the notices on all files listed in manifest.txt. Agreement. 7. "Reproduction and Other Exploitation of the Licensed Product, including Modifications made by that Contributor. Distribution Obligations. 3.1.',
          maxLines: 10000,
          truncate: false,
        ),
        Typography(
          'Application of this License Agreement, and to permit persons to whom the Software alone or by means of mailing a medium customarily used for software exchange. When the Program shall continue and survive. IBM may publish new versions of the date such litigation is filed.',
          maxLines: 0,
          truncate: false,
        ),
      ],
    );
