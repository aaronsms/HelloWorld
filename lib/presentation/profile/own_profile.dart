import 'dart:io';

import 'package:flutter/material.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/profile_picture.dart';
import 'package:helloworld/domain/identity_access/service/i_user_repository.dart';
import 'package:helloworld/infrastructure/identity_access/model/learner_dto.dart';
import 'package:helloworld/infrastructure/identity_access/model/mentor_dto.dart';
import 'package:helloworld/infrastructure/identity_access/user_repository.dart';
import 'package:helloworld/presentation/scheduling/edit_schedule_page.dart';
import 'package:helloworld/presentation/scheduling/widgets/edit_time_slot.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/profile/widgets/profile_form.dart';
import 'package:helloworld/presentation/profile/widgets/language_set.dart';
import 'package:helloworld/presentation/profile/widgets/location.dart';
import 'package:helloworld/presentation/profile/widgets/name_tag.dart';
import 'package:helloworld/presentation/profile/widgets/biography.dart';
import 'package:helloworld/presentation/profile/widgets/ratings_form.dart';
import 'package:helloworld/presentation/profile/widgets/portfolio.dart';
import 'package:helloworld/presentation/profile/widgets/user_menu.dart';
import 'package:helloworld/presentation/profile/widgets/ratings.dart';
import 'package:helloworld/presentation/profile/widgets/charge.dart';

class OwnProfile extends StatefulWidget {
  final Learner learner;
  final Mentor mentor;
  final bool isLearnerOrMentor;

  const OwnProfile({Key key, this.learner, this.mentor, this.isLearnerOrMentor})
      : super(key: key);

  @override
  _OwnProfileState createState() => _OwnProfileState();
}

class _OwnProfileState extends State<OwnProfile> {
  bool isEditing;

  @override
  void initState() {
    super.initState();
    isEditing = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Icons Button Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_left,
                      color: Palette.primaryColor),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                UserMenu()
              ],
            ),

            // Profile Picture
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 105,
                  height: 105,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Palette.primaryColor,
                      width: 3.0,
                    ),
                  ),
                  child: Builder(
                    builder: (cont) {
                      final pic = !isEditing && widget.isLearnerOrMentor
                          ? widget.learner.profilePicture.value
                          : !isEditing
                              ? widget.mentor.profilePicture.value
                              : widget.isLearnerOrMentor
                                  ? cont
                                      .watch<ValueNotifier<Learner>>()
                                      .value
                                      .profilePicture
                                      .value
                                  : cont
                                      .watch<ValueNotifier<Mentor>>()
                                      .value
                                      .profilePicture
                                      .value;

                      if (isEditing) {
                        return GestureDetector(
                          onTap: () async {
                            if (isEditing) {
                              final ImagePicker imagePicker = ImagePicker();

                              final PickedFile imagePicked = await imagePicker
                                  .getImage(source: ImageSource.gallery);
                              if (imagePicked != null) {
                                final File imageCropped =
                                    await ImageCropper.cropImage(
                                  sourcePath: imagePicked.path,
                                  aspectRatio: const CropAspectRatio(
                                      ratioX: 1, ratioY: 1),
                                  compressQuality: 100,
                                  maxWidth: 700,
                                  maxHeight: 700,
                                  compressFormat: ImageCompressFormat.jpg,
                                  androidUiSettings: AndroidUiSettings(
                                    toolbarColor: Palette.primaryColor,
                                    toolbarTitle: 'Crop your display picture',
                                    toolbarWidgetColor: Colors.white,
                                    statusBarColor: Palette.primaryColor,
                                    backgroundColor: Colors.white,
                                  ),
                                );
                                if (widget.isLearnerOrMentor) {
                                  final valueNotifier =
                                      context.read<ValueNotifier<Learner>>();
                                  valueNotifier.value = valueNotifier.value
                                      .copyWith(
                                          profilePicture:
                                              ProfilePicture(imageCropped));
                                } else {
                                  final valueNotifier =
                                      context.read<ValueNotifier<Mentor>>();
                                  valueNotifier.value = valueNotifier.value
                                      .copyWith(
                                          profilePicture:
                                              ProfilePicture(imageCropped));
                                }
                              }
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage: pic.fold(
                              (l) =>
                                  const AssetImage('assets/images/avatar.png'),
                              (r) => FileImage(r),
                            ),
                          ),
                        );
                      }

                      if (widget.isLearnerOrMentor) {
                        return CircleAvatar(
                          backgroundImage:
                              widget.learner.profilePicture.value.fold(
                            (l) => const AssetImage('assets/images/avatar.png'),
                            (r) => FileImage(r),
                          ),
                        );
                      } else {
                        return CircleAvatar(
                          backgroundImage:
                              widget.mentor.profilePicture.value.fold(
                            (l) => const AssetImage('assets/images/avatar.png'),
                            (r) => FileImage(r),
                          ),
                        );
                      }
                    },
                  ),
                )),

            // NameTag
            if (widget.isLearnerOrMentor)
              NameTag(
                name: widget.learner.name.getOrCrash(),
                type: "LEARNER",
                isEditing: isEditing,
                isLearnerOrMentor: widget.isLearnerOrMentor,
              ),
            if (!widget.isLearnerOrMentor)
              NameTag(
                name: widget.mentor.name.getOrCrash(),
                type: "MENTOR",
                isEditing: isEditing,
                isLearnerOrMentor: !widget.isLearnerOrMentor,
              ),

            // Biography
            if (widget.isLearnerOrMentor)
              BiographyUi(
                bio: widget.learner.biography.getOrCrash(),
                isEditing: isEditing,
                isLearnerOrMentor: widget.isLearnerOrMentor,
              ),
            if (!widget.isLearnerOrMentor)
              BiographyUi(
                bio: widget.mentor.biography.getOrCrash(),
                isEditing: isEditing,
                isLearnerOrMentor: !widget.isLearnerOrMentor,
              ),

            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 0,
              indent: 10,
              endIndent: 10,
            ),

            // Teaching languages
            if (!widget.isLearnerOrMentor)
              Builder(builder: (context) {
                final List<LanguageSet> teachingLanguageSet = [];
                final list = widget.mentor.languageBackground.teachingLanguages;
                list.forEach((key, value) {
                  teachingLanguageSet.add(
                    LanguageSet(
                      language: languageToString(key.getOrCrash()),
                      proficiency: value.toDouble(),
                    ),
                  );
                });

                return ProfileForm(
                  title: "TEACHING",
                  languages: teachingLanguageSet,
                  isEditing: isEditing,
                  isTeach: true,
                );
              }),

            if (!widget.isLearnerOrMentor)
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 0,
                indent: 10,
                endIndent: 10,
              ),

            // Learning languages
            Builder(builder: (context) {
              final List<LanguageSet> learningLanguageSet = [];
              final list = widget.isLearnerOrMentor
                  ? widget.learner.languageBackground.learningLanguages
                  : widget.mentor.languageBackground.learningLanguages;
              list.forEach((key, value) {
                learningLanguageSet.add(
                  LanguageSet(
                    language: languageToString(key.getOrCrash()),
                    proficiency: value.toDouble(),
                  ),
                );
              });

              return ProfileForm(
                title: "LEARNING",
                languages: learningLanguageSet,
                isEditing: isEditing,
                isLearnerOrMentor: widget.isLearnerOrMentor,
                isLearn: true,
              );
            }),

            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 0,
              indent: 10,
              endIndent: 10,
            ),

            // Speaking languages
            Builder(builder: (context) {
              final List<LanguageSet> speakingLanguageSet = [];
              final list = widget.isLearnerOrMentor
                  ? widget.learner.languageBackground.speakingLanguages
                  : widget.mentor.languageBackground.speakingLanguages;
              list.forEach((key, value) {
                speakingLanguageSet.add(
                  LanguageSet(
                    language: languageToString(key.getOrCrash()),
                    proficiency: value.toDouble(),
                  ),
                );
              });

              return ProfileForm(
                title: "ALSO SPEAKS",
                languages: speakingLanguageSet,
                isEditing: isEditing,
                isLearnerOrMentor: widget.isLearnerOrMentor,
                isSpeak: true,
              );
            }),

            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 0,
              indent: 10,
              endIndent: 10,
            ),

            // Location
            Builder(builder: (context) {
              final location = widget.isLearnerOrMentor
                  ? widget.learner.location
                  : widget.mentor.location;

              final locations = location
                  .map((e) => LocationUi(
                      latlng: e.value1, location: e.value2.getOrCrash()))
                  .toList();

              return ProfileForm(
                title: "PREFERRED LOCATIONS",
                isEditing: isEditing,
                isLearnerOrMentor: widget.isLearnerOrMentor,
                locations: locations,
              );
            }),

            if (!widget.isLearnerOrMentor)
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 0,
                indent: 10,
                endIndent: 10,
              ),

            // Charging rates
            if (!widget.isLearnerOrMentor)
              const ProfileForm(title: "CHARGING RATES", charges: [
                Charge(
                  charge: 10.0,
                  language: 'Spanish',
                ),
                Charge(
                  charge: 10.50,
                  language: 'Thai',
                )
              ]),

            if (!widget.isLearnerOrMentor)
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 0,
                indent: 10,
                endIndent: 10,
              ),

            // Qualifications
            if (!widget.isLearnerOrMentor)
              const ProfileForm(
                title: "QUALIFICATIONS",
                qualifications: <Portfolio>[
                  Portfolio(
                    qualification: "Attained Grade 'A' in GCSE O-LEVEL Spanish",
                  ),
                  Portfolio(
                    qualification: "Attained Grade 'A' in GCSE A-LEVEL Spanish",
                  )
                ],
              ),

            if (!widget.isLearnerOrMentor)
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 0,
                indent: 10,
                endIndent: 10,
              ),

            // Ratings
            if (!widget.isLearnerOrMentor)
              const RatingsForm(
                  title: "RATINGS",
                  rating: Ratings(numberOfReviews: 25, rating: 4.0)),

            // View schedule
            Container(
              width: 160,
              padding: const EdgeInsets.only(top: 50),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (cont) {
                    return ChangeNotifierProvider(
                        create: (context) => SlotInfo(),
                        child: EditSchedulePage());
                  }));
                },
                color: Palette.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Text(
                  'View Schedule',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Martel Sans',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),

            Container(
              width: 160,
              padding: const EdgeInsets.only(top: 20),
              child: RaisedButton(
                onPressed: () async {
                  if (isEditing) {
                    //Check if edited
                    if (widget.isLearnerOrMentor) {
                      final valueNotifier =
                          context.read<ValueNotifier<Learner>>();
                      final IUserRepository repo = UserRepository();

                      final isChanged =
                          LearnerDto.fromDomain(valueNotifier.value) !=
                              LearnerDto.fromDomain(widget.learner);

                      if (isChanged) {
                        repo.updateLearner(learner: valueNotifier.value);
                        Navigator.of(context).pop();
                      }
                    } else {
                      final valueNotifier =
                          context.read<ValueNotifier<Mentor>>();
                      final IUserRepository repo = UserRepository();

                      final isChanged =
                          MentorDto.fromDomain(valueNotifier.value) !=
                              MentorDto.fromDomain(widget.mentor);

                      if (isChanged) {
                        repo.updateMentor(mentor: valueNotifier.value);
                        Navigator.of(context).pop();
                      }
                    }
                    setState(() {
                      isEditing = false;
                    });
                  } else {
                    //Reset fields
                    if (widget.isLearnerOrMentor) {
                      final valueNotifier =
                          context.read<ValueNotifier<Learner>>();
                      valueNotifier.value =
                          await LearnerDto.fromDomain(widget.learner)
                              .toDomain();
                    } else {
                      final valueNotifier =
                          context.read<ValueNotifier<Mentor>>();
                      valueNotifier.value =
                          await MentorDto.fromDomain(widget.mentor).toDomain();
                    }

                    setState(() {
                      isEditing = true;
                    });
                  }
                },
                color: Palette.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Text(
                  isEditing ? 'Confirm Editing' : 'Edit Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Martel Sans',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
