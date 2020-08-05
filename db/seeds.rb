# require 'open-uri'
# require 'selenium-webdriver'

Artist.destroy_all
ron = Artist.create!(email: 'ron@abstract.com', password: 'password', first_name: 'Ron', last_name: 'Marko')


# driver = Selenium::WebDriver.for :chrome
# driver.get 'https://www.abstractartist.com/'
# sleep(10)
# # load more
# 8.times do
#   driver.find_element(:id, 'comp-k7y0qdrashowMore').click
#   sleep(3)
# end

addresses = ['https://static.wixstatic.com/media/2f131b_fdb4821b8a81408ba2f22f560a8e4827~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_fdb4821b8a81408ba2f22f560a8e4827~mv2.webp',
'https://static.wixstatic.com/media/2f131b_890057f315354201882129c6a75428b7~mv2.png/v1/fill/w_574,h_600,al_c,lg_1,q_85/2f131b_890057f315354201882129c6a75428b7~mv2.webp',
'https://static.wixstatic.com/media/2f131b_ac307f193b1b4d8aae532d5119542476~mv2.png/v1/fill/w_608,h_636,al_c,q_90,usm_0.66_1.00_0.01/2f131b_ac307f193b1b4d8aae532d5119542476~mv2.webp',
'https://static.wixstatic.com/media/2f131b_01403cccc9954d3dba5e3453fb3206b1~mv2.png/v1/fill/w_608,h_636,al_c,q_90,usm_0.66_1.00_0.01/2f131b_01403cccc9954d3dba5e3453fb3206b1~mv2.webp',
'https://static.wixstatic.com/media/2f131b_70db15353c0a4be9860f7e76a1ef91c8~mv2.jpg/v1/fill/w_430,h_449,al_c,lg_1,q_80/2f131b_70db15353c0a4be9860f7e76a1ef91c8~mv2.webp',
'https://static.wixstatic.com/media/2f131b_b5b4bb1405cd4400bfe7cdcb323287fb~mv2_d_2988_5312_s_4_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_b5b4bb1405cd4400bfe7cdcb323287fb~mv2_d_2988_5312_s_4_2.webp',
'https://static.wixstatic.com/media/2f131b_763ade49bc2c41aa9b166de7ed0460fc~mv2.png/v1/fill/w_485,h_507,al_c,q_85/2f131b_763ade49bc2c41aa9b166de7ed0460fc~mv2.webp',
'https://static.wixstatic.com/media/2f131b_d64ceb1dd5a24af09d2cc6d90e9e538b~mv2.jpg/v1/fill/w_608,h_636,al_c,lg_1,q_85/2f131b_d64ceb1dd5a24af09d2cc6d90e9e538b~mv2.webp',
'https://static.wixstatic.com/media/2f131b_5d2df1e5adf44f3f82c1b9157a09110b~mv2.png/v1/fill/w_608,h_636,al_c,q_90,usm_0.66_1.00_0.01/2f131b_5d2df1e5adf44f3f82c1b9157a09110b~mv2.webp',
'https://static.wixstatic.com/media/2f131b_503b904a868a48f4a2a0c66e41963189~mv2.png/v1/fill/w_608,h_636,al_c,q_90,usm_0.66_1.00_0.01/2f131b_503b904a868a48f4a2a0c66e41963189~mv2.webp',
'https://static.wixstatic.com/media/2f131b_e9fb50b67ddd4cab962d4035ab0e1548~mv2.png/v1/fill/w_608,h_636,al_c,q_90,usm_0.66_1.00_0.01/2f131b_e9fb50b67ddd4cab962d4035ab0e1548~mv2.webp',
'https://static.wixstatic.com/media/2f131b_3604ec358c2f456da146fd2f74e845d9~mv2.png/v1/fill/w_608,h_636,al_c,q_90,usm_0.66_1.00_0.01/2f131b_3604ec358c2f456da146fd2f74e845d9~mv2.webp',
'https://static.wixstatic.com/media/2f131b_16f304a4d2c34fc6962499da80bb796c~mv2.png/v1/fill/w_491,h_514,al_c,q_85/2f131b_16f304a4d2c34fc6962499da80bb796c~mv2.webp',
'https://static.wixstatic.com/media/2f131b_607cfbcff7ab4606bc9a10bb61b0c16d~mv2.png/v1/fill/w_608,h_636,al_c,q_90,usm_0.66_1.00_0.01/2f131b_607cfbcff7ab4606bc9a10bb61b0c16d~mv2.webp',
'https://static.wixstatic.com/media/2f131b_2120e14c94d74dce8e85924ff9875211~mv2.png/v1/fill/w_372,h_389,al_c,lg_1,q_85/2f131b_2120e14c94d74dce8e85924ff9875211~mv2.webp',
'https://static.wixstatic.com/media/2f131b_5a507dfbac964b6fb2c4018b849e242f~mv2.png/v1/fill/w_608,h_636,al_c,q_90,usm_0.66_1.00_0.01/2f131b_5a507dfbac964b6fb2c4018b849e242f~mv2.webp',
'https://static.wixstatic.com/media/2f131b_08b0580af05c4a70a767b7bfa39e6a71~mv2.jpg/v1/fill/w_608,h_636,al_c,lg_1,q_85/2f131b_08b0580af05c4a70a767b7bfa39e6a71~mv2.webp',
'https://static.wixstatic.com/media/2f131b_79b5ffb9068a4d6c8b147c3d3484620d~mv2.jpg/v1/fill/w_600,h_628,al_c,lg_1,q_85/2f131b_79b5ffb9068a4d6c8b147c3d3484620d~mv2.webp',
'https://static.wixstatic.com/media/2f131b_1957a754450e43a38a8e328fff774b02~mv2.jpg/v1/fill/w_313,h_328,al_c,lg_1,q_80/2f131b_1957a754450e43a38a8e328fff774b02~mv2.webp',
'https://static.wixstatic.com/media/2f131b_ffeada89ceaa47488101635a347ccf1d~mv2.png/v1/fill/w_387,h_405,al_c,lg_1,q_85/2f131b_ffeada89ceaa47488101635a347ccf1d~mv2.webp',
'https://static.wixstatic.com/media/2f131b_71c07978e0c64743aa47d9634324a508~mv2.png/v1/fill/w_593,h_620,al_c,q_90/2f131b_71c07978e0c64743aa47d9634324a508~mv2.webp',
'https://static.wixstatic.com/media/2f131b_8effed693c4b4d9f929bb0b35952fe31~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_8effed693c4b4d9f929bb0b35952fe31~mv2.webp',
'https://static.wixstatic.com/media/2f131b_94b1a16e786444f3b68da2bc908046d4~mv2_d_2753_2772_s_4_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_94b1a16e786444f3b68da2bc908046d4~mv2_d_2753_2772_s_4_2.webp',
'https://static.wixstatic.com/media/2f131b_c3eea76206054f23b1d5efdb47eec7e4~mv2_d_1912_2768_s_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_c3eea76206054f23b1d5efdb47eec7e4~mv2_d_1912_2768_s_2.webp',
'https://static.wixstatic.com/media/2f131b_2c18240b1167435388beb2892e66ced3~mv2_d_2508_2396_s_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_2c18240b1167435388beb2892e66ced3~mv2_d_2508_2396_s_2.webp',
'https://static.wixstatic.com/media/2f131b_0c2f4342c66e4b1d891e7b9e97767546~mv2_d_2208_2000_s_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_0c2f4342c66e4b1d891e7b9e97767546~mv2_d_2208_2000_s_2.webp',
'https://static.wixstatic.com/media/2f131b_5629270f6363411da976226e330125ff~mv2_d_2312_2312_s_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_5629270f6363411da976226e330125ff~mv2_d_2312_2312_s_2.webp',
'https://static.wixstatic.com/media/2f131b_4ab8d4de5cc24b07a6a430591297a3b8~mv2_d_3168_2196_s_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_4ab8d4de5cc24b07a6a430591297a3b8~mv2_d_3168_2196_s_2.webp',
'https://static.wixstatic.com/media/2f131b_929bcce3bbde4fa7af4e8e10586b8599~mv2_d_2648_2576_s_4_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_929bcce3bbde4fa7af4e8e10586b8599~mv2_d_2648_2576_s_4_2.webp',
'https://static.wixstatic.com/media/2f131b_f2e419798a2141ef8ba0a91f88c45da5~mv2_d_2384_2384_s_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_f2e419798a2141ef8ba0a91f88c45da5~mv2_d_2384_2384_s_2.webp',
'https://static.wixstatic.com/media/2f131b_ce98d381729c4e5caddb27386e2bb0d3~mv2_d_2392_2504_s_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_ce98d381729c4e5caddb27386e2bb0d3~mv2_d_2392_2504_s_2.webp',
'https://static.wixstatic.com/media/2f131b_7980a09e60e04073b845a6ff999b99b9~mv2_d_2312_2232_s_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_7980a09e60e04073b845a6ff999b99b9~mv2_d_2312_2232_s_2.webp',
'https://static.wixstatic.com/media/2f131b_eee28a43aa7a4da787d5500b5e485ce3~mv2_d_2168_2312_s_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_eee28a43aa7a4da787d5500b5e485ce3~mv2_d_2168_2312_s_2.webp',
'https://static.wixstatic.com/media/2f131b_d10d20c250ea4551b4c98b1d2dead56e~mv2_d_2311_2396_s_2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_d10d20c250ea4551b4c98b1d2dead56e~mv2_d_2311_2396_s_2.webp',
'https://static.wixstatic.com/media/2f131b_807e254f59924a099b29ff482ce4a9cb~mv2.jpg/v1/fill/w_466,h_487,al_c,lg_1,q_80/2f131b_807e254f59924a099b29ff482ce4a9cb~mv2.webp',
'https://static.wixstatic.com/media/2f131b_9e45ce24bc474fefbcf4b407e140f0a2~mv2.jpg/v1/fill/w_586,h_613,al_c,q_80/2f131b_9e45ce24bc474fefbcf4b407e140f0a2~mv2.webp',
'https://static.wixstatic.com/media/2f131b_33b5237458d5420fa8a554237bb4ff8c~mv2.jpg/v1/fill/w_608,h_636,al_c,lg_1,q_85/2f131b_33b5237458d5420fa8a554237bb4ff8c~mv2.webp',
'https://static.wixstatic.com/media/2f131b_e922b497859848fdbc679d64ce52bf2b~mv2.jpg/v1/fill/w_580,h_607,al_c,q_80/2f131b_e922b497859848fdbc679d64ce52bf2b~mv2.webp',
'https://static.wixstatic.com/media/2f131b_07f111cd57fc457f8a8b9759203a3e83~mv2.jpg/v1/fill/w_600,h_628,al_c,lg_1,q_85/2f131b_07f111cd57fc457f8a8b9759203a3e83~mv2.webp',
'https://static.wixstatic.com/media/2f131b_1aee16dd29854208a8f5e0af7fa3e14c~mv2.png/v1/fill/w_540,h_565,al_c,lg_1,q_85/2f131b_1aee16dd29854208a8f5e0af7fa3e14c~mv2.webp',
'https://static.wixstatic.com/media/2f131b_bd26a86181e04884bd2d28a46deb85a1~mv2.jpg/v1/fill/w_441,h_461,al_c,q_80/2f131b_bd26a86181e04884bd2d28a46deb85a1~mv2.webp',
'https://static.wixstatic.com/media/2f131b_676407a4115d4695a10be75976dec34c~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_676407a4115d4695a10be75976dec34c~mv2.webp',
'https://static.wixstatic.com/media/2f131b_0606bcd16b074d4cafbb481aa72292fe~mv2.jpg/v1/fill/w_467,h_488,al_c,q_80/2f131b_0606bcd16b074d4cafbb481aa72292fe~mv2.webp',
'https://static.wixstatic.com/media/2f131b_e10e6276f56e4e479cfda3035c7a0d21~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_e10e6276f56e4e479cfda3035c7a0d21~mv2.webp',
'https://static.wixstatic.com/media/2f131b_40447e02a6934d30890e09b0e34d83b2~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_40447e02a6934d30890e09b0e34d83b2~mv2.webp',
'https://static.wixstatic.com/media/2f131b_746862ca25d84f609444aca33b887f5e~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_746862ca25d84f609444aca33b887f5e~mv2.webp',
'https://static.wixstatic.com/media/2f131b_e30e74b9115440d2904cdd634cb57479~mv2.jpg/v1/fill/w_375,h_392,al_c,lg_1,q_80/2f131b_e30e74b9115440d2904cdd634cb57479~mv2.webp',
'https://static.wixstatic.com/media/2f131b_3a3c5f8fb3a14f87a5090c21bd5f4aeb~mv2.jpg/v1/fill/w_476,h_498,al_c,q_80/2f131b_3a3c5f8fb3a14f87a5090c21bd5f4aeb~mv2.webp',
'https://static.wixstatic.com/media/2f131b_7cddb07531704907885402755bffb3d2~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_7cddb07531704907885402755bffb3d2~mv2.webp',
'https://static.wixstatic.com/media/2f131b_755601cdd1584f4fa3c06100e164979d~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_755601cdd1584f4fa3c06100e164979d~mv2.webp',
'https://static.wixstatic.com/media/2f131b_448af0f90c914c9aac47eb6138e30160~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_448af0f90c914c9aac47eb6138e30160~mv2.webp',
'https://static.wixstatic.com/media/2f131b_bbe8cf9caf7d412f893a9ce00f71806b~mv2.jpg/v1/fill/w_583,h_610,al_c,lg_1,q_80/2f131b_bbe8cf9caf7d412f893a9ce00f71806b~mv2.webp',
'https://static.wixstatic.com/media/2f131b_02c56528e297420f96fa66720e2fb21f~mv2.jpg/v1/fill/w_477,h_499,al_c,lg_1,q_80/2f131b_02c56528e297420f96fa66720e2fb21f~mv2.webp',
'https://static.wixstatic.com/media/2f131b_dbbe72fa72aa4513b9500730855db884~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_dbbe72fa72aa4513b9500730855db884~mv2.webp',
'https://static.wixstatic.com/media/2f131b_874fa4d2a0694e9dadb6eb5690b1b912~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_874fa4d2a0694e9dadb6eb5690b1b912~mv2.webp',
'https://static.wixstatic.com/media/2f131b_7e53b18ca70f4651971c37213e83c128~mv2.jpg/v1/fill/w_608,h_636,al_c,q_85,usm_0.66_1.00_0.01/2f131b_7e53b18ca70f4651971c37213e83c128~mv2.webp',
'https://static.wixstatic.com/media/2f131b_ea47824630d04971bdffb1fddeccc52d~mv2.jpg/v1/fill/w_559,h_584,al_c,lg_1,q_80/2f131b_ea47824630d04971bdffb1fddeccc52d~mv2.webp']
#Extract the link we want to go to
# imgs = driver.find_elements(:tag_name, 'img')
addresses.each_with_index do |address, i|
  # address = img.attribute('src')
  # puts address
  file = URI.open(address)
  art = ron.artworks.create!(name: 'placeholder')
  art.photo.attach(io: file, filename: "img#{i}.png", content_type: 'image/png')
  art.save!
end
